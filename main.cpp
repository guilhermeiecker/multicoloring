#include <iostream>	// cout
#include <stdint.h>	// uint64_t
#include <stdio.h>
#include <fstream>	// ifstream, ofstream
#include <iomanip>      // std::setprecision
#include <ctime>	// clock
#include <iomanip>      // std::setprecision

#include "Enumerator.h"
#include "gurobi_c++.h"

#define NETWORKS_PATH "networks/"
typedef unsigned __int128 uint128_t;

using namespace std;

int main(int argc, char** argv)
{
	if(argc != 5)
	{
		cout << "Missing arguments!" << endl;
		cout << "USAGE: ./main <area side> <network id> <number of nodes>" << endl;
		return 0;
	}

	clock_t t, tt, ttt;

	t = clock();

	double aside = (double)atof(argv[1]);
	int    netid = atoi(argv[2]);
	int    nodes = atoi(argv[3]);
	double zLP   = (double)atof(argv[4]);
	//if(netid==1)
	//	cout << "aside\tnetid\tnodes\tlinks\tfsets\tmulti\tlpZ\tipZ\tsflag\ttime" << endl;

	string name = NETWORKS_PATH + to_string(nodes) + "-" + to_string((int)aside) + ".dat";

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
		model.getEnv().set(GRB_IntParam_OutputFlag, 0);
		//model.getEnv().set("Presolve", "0");

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
		if(zLP < zIP) mtcol = true;
		else mtcol = false;
		//mtcol = (zLP < zIP) ? true : false;

		delete[] vars;
	}
	catch(GRBException e) {
		cout << "Error code = " << e.getErrorCode() << endl;
		return 0;
	}
	catch(...) {
		cout << "Exception during optimization" << endl;
		return 0;
	}

	tt = clock();
	cout << mtcol << "\t"  << zLP << "\t" << zIP << "\t0\t" << double(tt - t) / CLOCKS_PER_SEC << "\t" << endl;

	return 0;
}
