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
	if(argc != 4)
	{
		cout << "Missing arguments!" << endl;
		cout << "USAGE: ./main <area side> <network id> <number of nodes>" << endl;
		return 0;
	}

	clock_t t, tt, ttt, tttt;


	double aside = (double)atof(argv[1]);
	int    netid = atoi(argv[2]);
	int    nodes = atoi(argv[3]);
	double alpha = (double)atof(argv[2]);

	uint64_t links, fsets;
	double x, zLP, zIP;
	double etime, ltime, itime; // etime: enumeration time; ltime: simplex time; itime: b&b time	

	Network* network;
	Enumerator* enumerator;

	GRBEnv env = GRBEnv();
	GRBModel model = GRBModel(env);

	srand(netid);

	network = new Network(nodes, aside, 300.0, alpha);
	links = network->get_links().size();
	
	t = clock();

	enumerator = new Enumerator(network, &model);
	enumerator->find_fset_entry();
	fsets = enumerator->get_fset();

	delete enumerator;
	delete network;

	tt = clock();

	infile.open(name, ios::binary);
	try {
		model.set("Method", "0");
		//model.getEnv().set(GRB_DoubleParam_TimeLimit, 1800.0);
		model.getEnv().set(GRB_IntParam_OutputFlag, 0);

		GRBLinExpr objective = 0;
		GRBLinExpr* constraints = new GRBLinExpr[links];
		fill(constraints, constraints + links, 0);
		GRBVar* vars = model.addVars(fsets, GRB_BINARY);

		uint128_t p, q;
		uint64_t r, idx;
		for(uint64_t j = 0; j < fsets; j++) {
		        objective += vars[j];
		        infile.read((char*)&p, sizeof(uint128_t));
		        idx = 0;
		        do {
		                q = p >> 1;
		                r = p & 1;
		                if (r == 1) constraints[idx] += vars[j];
		                p = q;
				idx++;
			} while(q > 0);
		}

		infile.close();
		remove(name.c_str());

		model.setObjective(objective, GRB_MINIMIZE);
		for(uint64_t i = 0; i < links; i++)
			model.addConstr(constraints[i], GRB_EQUAL, 1);

		model.optimize();

		zIP = model.get(GRB_DoubleAttr_ObjVal);

		delete[] vars;

		tt = clock();

		cout << aside << "\t" << netid << "\t" << nodes << "\t" << links << "\t" << fsets << "\t" << flush;
		cout << mtcol << "\t" << "\t" << zIP << "\t0\t" << double(tt - t) / CLOCKS_PER_SEC << "\t" << endl;

		return 0;
	}
	catch(GRBException e) {
		cout << "Error code = " << e.getErrorCode() << endl;
	}
	catch(...) {
		cout << "Exception during optimization" << endl;
	}
}
