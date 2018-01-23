/*	Systems Engineering and Computer Science Department - COPPE/UFRJ
**	Author: Guilherme Iecker Ricardo
**
**	description:	calculates lp and ip objective functions and checks whether multi is true or false
**	input:				aside	netid	nodes	alpha
**	output:				aside	netid	nodes	alpha	links	fsets	fract	multi	zLP	zIP	ratio	enumt	linpt	intpt sflag
*/

#include <iostream>	// cout, endl
#include <stdint.h>	// uint64_t
#include <iomanip>      // std::setprecision
#include <limits>
#include <bitset>

#include "Enumerator.h"
#include "gurobi_c++.h"

typedef unsigned __int128 uint128_t;
typedef std::numeric_limits< double > dbl;

using namespace std;

int main(int argc, char** argv)
{
	if(argc != 4)
	{
		cout << "Missing arguments!" << endl;
		cout << "USAGE: ./main <area side> <network id> <number of nodes>" << endl;
		return 0;
	}

	double aside = (double)atof(argv[1]);
	int    netid = atoi(argv[2]);
	int    nodes = atoi(argv[3]);

	uint64_t links, fsets;
	double y, zLP, zIP;
	string varName;
	
	Network* network;
	Enumerator* enumerator;

	srand(netid);

	//network = new Network("book.dat");
	network = new Network(nodes, aside, 300.0, 4.0);
	links = network->get_links().size();
	cout << links << endl;
	cout.precision(dbl::max_digits10);

	try {
		GRBEnv env = GRBEnv();
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

		for(uint64_t i = 0; i < links; i++) model.addConstr(constraints[i], GRB_EQUAL, 1);

		delete enumerator;
		delete network;

		model.optimize();
		zLP = model.get(GRB_DoubleAttr_ObjVal);
		GRBVar* vars = model.getVars();

		cout << "Multicoloring Scheduling" << endl;
		cout << "Variable\tFeasible Set\tDecimal Value\tFractional Value" << endl;

		for (uint64_t i = 0; i < fsets; i++) {
			y = vars[i].get(GRB_DoubleAttr_X);
			varName = vars[i].get(GRB_StringAttr_VarName);
			if((y > 0.0)) {
				bitset<64> x(stoi(varName));
				cout << "x[" << varName << "]\t" << x << "\t" << y << "\t" << y << endl;
			}
		}

		for(uint64_t i = 0; i < fsets; i++) vars[i].set(GRB_CharAttr_VType, GRB_BINARY);
		model.update();
		model.optimize();

		zIP = model.get(GRB_DoubleAttr_ObjVal);
		
		cout << "Traditional Coloring Scheduling" << endl;
		cout << "Variable\tFeasible Set\tDecimal Value\tFractional Value" << endl;
		for (uint64_t i = 0; i < fsets; i++) {
                        y = vars[i].get(GRB_DoubleAttr_X);
                        varName = vars[i].get(GRB_StringAttr_VarName);
                        if((y > 0.0)) {
                        	bitset<64> x(stoi(varName));
                                cout << "x[" << varName << "]\t" << x << "\t" << y << "\t" << y << endl;
                        }
                }

		cout << "zLP=" << zLP << " zIP=" << zIP << " zLP/zIP=" << zLP/zIP << endl;

		delete[] vars;

		return 0;
	}
	catch(GRBException e) {
		cout << "Error code = " << e.getErrorCode() << endl;
	}
	catch(...) {
		cout << "Exception during optimization" << endl;
	}
}
