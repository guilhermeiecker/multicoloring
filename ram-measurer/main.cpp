#include <iostream>	// cout
#include <stdint.h>	// uint64_t
#include <stdio.h>
#include <fstream>	// ifstream, ofstream
#include <iomanip>      // std::setprecision
#include <ctime>	// clock
#include <iomanip>      // std::setprecision
#include <math.h>	// ceil, floor

#include "Enumerator.h"
#include "gurobi_c++.h"

#define EPSILON 0.0000000001

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

	clock_t t, tt;

	t = clock();

	double aside = (double)atof(argv[1]);
	int    netid = atoi(argv[2]);
	int    nodes = atoi(argv[3]);

	string name = "./tmp-" + to_string(nodes) + "-" + to_string((int)aside) + ".dat";

	ofstream outfile;
	ifstream infile;

	Network* network;
	Enumerator* enumerator;

	bool mtcol;
	uint64_t links, fsets;
	double zIP;

	srand(netid);

	network = new Network(nodes, aside, 300.0);
	links = network->get_links().size();

	remove(name.c_str());
	outfile.open(name, ios::binary | ios::out);

	enumerator = new Enumerator(network, &outfile);
	enumerator->find_fset_entry();
	fsets = enumerator->get_fset();

	outfile.close();

	cout << aside << "\t" << netid << "\t" << nodes << "\t" << links << "\t" << fsets << "\t" << flush;

	delete enumerator;
	delete network;

	infile.open(name, ios::binary);
	try {
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);
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
