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
	if(argc != 4)
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
	
	//if(netid==1)
	//	cout << "aside\tnetid\tnodes\tdelta\tlinks\tfsets\tmtcol\tlpZ\tipZ\tsflag\tetime\totime\tttime" << endl;

	string name = NETWORKS_PATH + to_string(nodes) + "-" + to_string((int)aside) + ".dat";

	ofstream outfile;
	ifstream infile;

	Network* network;
	Enumerator* enumerator;

	bool mtcol;
	uint64_t links, fsets, delta;
	double lpZ, ipZ;

	srand(netid);

	network = new Network(nodes, aside, 300.0);
	links = network->get_links().size();
	delta = network->get_delta();

	if(links == 0) {
		cout << aside << "\t" << netid << "\t" << nodes << "\t" << delta << "\t" << links << "\t0\t0\t0.0\t0.0\t1\t0.0\t0.0\t0.0" << endl;
		return 0;
	}

	if(links > 128) {
		cout << aside << "\t" << netid << "\t" << nodes << "\t" << delta << "\t" << links << "\t0\t0\t0.0\t0.0\t2\t0.0\t0.0\t0.0" << endl;
		return 0;
	}

	remove(name.c_str());
	outfile.open(name, ios::binary | ios::out);

	enumerator = new Enumerator(network, &outfile);
	enumerator->find_fset_entry();
	fsets = enumerator->get_fset();

	outfile.close();

	if(fsets == 0) {
                tt = clock();
                cout << aside << "\t" << netid << "\t" << nodes << "\t" << delta << "\t" << links << "\t0\t0\t0.0\t0.0\t3\t" <<  double(tt - t) / CLOCKS_PER_SEC << "\t0.0\t" << double(tt - t) / CLOCKS_PER_SEC  << endl;
		remove(name.c_str());
		return 0;
	}

	cout << aside << "\t" << netid << "\t" << nodes << "\t" << delta << "\t" << links << "\t" << fsets << "\t" << flush;

	delete enumerator;
	delete network;

	tt = clock();

	infile.open(name, ios::binary);
	try {
		GRBEnv env = GRBEnv();
		GRBModel model = GRBModel(env);
		model.set("Method", "0");
		model.getEnv().set(GRB_IntParam_OutputFlag, 0);
		model.getEnv().set("Presolve", "0");

		GRBLinExpr objective = 0;
		GRBLinExpr* constraints = new GRBLinExpr[links];
		fill(constraints, constraints + links, 0);
		GRBVar* vars = model.addVars(fsets, GRB_CONTINUOUS);

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

		ipZ = lpZ = model.get(GRB_DoubleAttr_ObjVal);
		mtcol = false;
		double y;
		for (uint64_t i = 0; i < fsets; i++) {
			y = vars[i].get(GRB_DoubleAttr_X);
			if((y > 0.0) && (y < 1.0)) {
				mtcol = true;
				break;
			}
		}

		if(mtcol){
			for (uint64_t i = 0; i < fsets; i++) vars[i].set(GRB_CharAttr_VType, GRB_BINARY);
			model.update();
			model.optimize();
			
			ipZ = model.get(GRB_DoubleAttr_ObjVal);
			mtcol = (lpZ < ipZ) ? true : false;
		}

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

	ttt = clock();
	cout << mtcol << "\t"  << lpZ << "\t" << ipZ << "\t0\t"
			 << double(tt - t) / CLOCKS_PER_SEC << "\t"
			 << double(ttt - tt) / CLOCKS_PER_SEC << "\t"
			 << double(ttt - t) / CLOCKS_PER_SEC << endl;

	return 0;
}
