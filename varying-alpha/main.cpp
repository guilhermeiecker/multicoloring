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
	double x, zLP, zIP;
	double enumt, linpt, intpt; // enumt: enumeration time; linpt: simplex time; intpt: b&b time
	bool frac = false;

	Network* network;
	Enumerator* enumerator;

	srand(netid);

	network = new Network(nodes, aside, 300.0, alpha);
	links = network->get_links().size();

	if (links == 0) {
		cout << "ERROR: Network has no links.";
		return 0;
	}
	if (links > 128) {
		cout << "ERROR: Network has too many links (>128).";
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

		cout << aside << "\t" << netid << "\t" << nodes << "\t" << links << "\t" << fsets << "\t" << flush;

		for(uint64_t i = 0; i < links; i++) model.addConstr(constraints[i], GRB_EQUAL, 1);

		delete enumerator;
		delete network;

		tt = clock();

		model.optimize();
		zLP = model.get(GRB_DoubleAttr_ObjVal);

		ttt = clock();
		/*
		GRBVar* vars = model.get_vars()
		for(uint64_t i = 0; i < fsets; i++)  {
			model.getVarByName(vars[i].get('VarName')).set('VType', 'B');
		}

		delete[] vars;
		*/
		zIP = 0.0;

		tttt = clock();

		enumt = double(tt - t)     / CLOCKS_PER_SEC;
		linpt = double(ttt - tt)   / CLOCKS_PER_SEC;
		intpt = double(tttt - ttt) / CLOCKS_PER_SEC;

		cout << frac << "\t" << "\t" << zLP << "\t" << zIP << "\t" << enumt << "\t" << enumt << "\t" << enumt << "\t" << endl;

		return 0;
	}
	catch(GRBException e) {
		cout << "Error code = " << e.getErrorCode() << endl;
	}
	catch(...) {
		cout << "Exception during optimization" << endl;
	}
}
