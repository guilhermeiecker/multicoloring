#include <iostream>	// cout, endl
#include <stdint.h>	// uint64_t
#include <iomanip>      // std::setprecision
#include <ctime>	// clock

#include "Enumerator.h"
#include "gurobi_c++.h"

typedef unsigned __int128 uint128_t;

using namespace std;

int main(int argc, char** argv)
{
	if(argc != 5)
	{
		cout << "Missing arguments!" << endl;
		cout << "USAGE: ./main <area side> <network id> <number of nodes> <alpha>" << endl;
		return 0;
	}

	clock_t t, tt, ttt, tttt;

	double aside = (double)atof(argv[1]);
	int    netid = atoi(argv[2]);
	int    nodes = atoi(argv[3]);
	double alpha = (double)atof(argv[4]);

	uint64_t links, fsets;
	double y, zLP, zIP;
	double enumt, linpt, intpt; // enumt: enumeration time; linpt: simplex time; intpt: b&b time
	bool frac, multi;

	Network* network;
	Enumerator* enumerator;

	srand(netid);

	network = new Network(nodes, aside, 300.0, alpha);
	links = network->get_links().size();

	if (links == 0) {
		cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t0\t0\t0.0\t0.0\t0.0\t0.0\t0.0\t0" << endl;
		return 0;
	}
	if (links > 128) {
		cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t0\t0\t0.0\t0.0\t0.0\t0.0\t0.0\t0" << endl;
		return 0;
	}

	t = clock();

	try {
		GRBEnv env = GRBEnv();
		//env.set(GRB_DoubleParam_TimeLimit, 1800.0);
		env.set(GRB_IntParam_OutputFlag, 0);

		GRBModel model = GRBModel(env);
		model.set("Method", "0");
		model.set(GRB_IntAttr_ModelSense, GRB_MINIMIZE);
		model.set(GRB_IntParam_Presolve, 0);

		GRBLinExpr* constraints = new GRBLinExpr[links];
		fill(constraints, constraints + links, 0);

		enumerator = new Enumerator(network, &model, constraints);
		enumerator->find_fset_entry();
		fsets = enumerator->get_fset();

		if (fsets == 0) {
			cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t" << fsets << "\t0\t0.0\t0.0\t0.0\t0.0\t0.0\t0" << endl;
			return 0;
		}

		cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t" << fsets << "\t" << flush;

		for(uint64_t i = 0; i < links; i++) model.addConstr(constraints[i], GRB_EQUAL, 1);

		delete enumerator;
		delete network;

		tt = clock();

		model.optimize();
		zLP = model.get(GRB_DoubleAttr_ObjVal);
		GRBVar* vars = model.getVars();

		frac = false;
		for (uint64_t i = 0; i < fsets; i++) {
			y = vars[i].get(GRB_DoubleAttr_X);
			if((y > 0.0) && (y < 1.0)) {
				frac = true;
				break;
			}
		}

		ttt = clock();

		if (frac) {
			for(uint64_t i = 0; i < fsets; i++) vars[i].set(GRB_CharAttr_VType, GRB_BINARY);

			model.update();
			model.optimize();

			zIP = model.get(GRB_DoubleAttr_ObjVal);
		} else {
			zIP = zLP;
		}

		delete[] vars;

		tttt = clock();

		if (zLP < zIP) multi = true;
		else multi = false;

		enumt = double(tt - t)     / CLOCKS_PER_SEC;
		linpt = double(ttt - tt)   / CLOCKS_PER_SEC;
		intpt = double(tttt - ttt) / CLOCKS_PER_SEC;

		cout << multi << "\t" << setprecision(6) << zLP << "\t" << zIP << "\t" << enumt << "\t" << linpt << "\t" << intpt << "\t1" << endl;

		return 0;
	}
	catch(GRBException e) {
		cout << "Error code = " << e.getErrorCode() << endl;
	}
	catch(...) {
		cout << "Exception during optimization" << endl;
	}
}
