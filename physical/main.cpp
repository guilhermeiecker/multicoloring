/*	Systems Engineering and Computer Science Program - COPPE/UFRJ
**	Author: Guilherme Iecker Ricardo
**
**	description:	calculates lp and ip objective functions and checks whether multi is true or false
**	input:		aside	netid	nodes	power	alpha	beta
**	output:		aside	netid	nodes	power	alpha	beta	links	fsets	fract	multi	zLP	zIP	ratio	enumt	linpt	intpt sflag
*/

#include <iostream>	// cout, endl
#include <stdint.h>	// uint64_t
#include <iomanip>      // std::setprecision
#include <ctime>	// clock
#include <math.h>	// floor, ceil
#include <limits>

#include "Enumerator.h"
#include "gurobi_c++.h"

#define THRESHOLD 0.00000000000001

typedef unsigned __int128 uint128_t;
typedef std::numeric_limits< double > dbl;

using namespace std;

int main(int argc, char** argv)
{
	cout.precision(dbl::max_digits10);

	if(argc != 7)
	{
		cout << "Missing arguments!" << endl;
		cout << "USAGE: ./main <area side> <network id> <number of nodes> <transmission power> <alpha> <beta>" << endl;
		return 0;
	}

	clock_t t, tt, ttt, tttt;

	double aside = (double)atof(argv[1]);
	int    netid = atoi(argv[2]);
	int    nodes = atoi(argv[3]);
	double power = (double)atof(argv[4]);
	double alpha = (double)atof(argv[5]);
	double betaa = (double)atof(argv[6]);

	uint64_t links, fsets;
	double y, zLP, zIP, ratio;
	double enumt, linpt, intpt; 
	bool fract, multi;

	Network* network;
	Enumerator* enumerator;

	srand(netid);

	network = new Network(nodes, aside, power, alpha, betaa);
	links = network->get_links().size();

	if (links == 0) {
		cout << "ERROR: No links" << endl;
		cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t0\t0\t0\t0.0\t0.0\t0.0\t0.0\t0.0\t0.0\t1" << endl;
		return 0;
	}
	if (links > 128) {
		cout << "ERROR: Too many links (>128)" << endl;
                cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t0\t0\t0\t0.0\t0.0\t0.0\t0.0\t0.0\t0.0\t2" << endl;
		return 0;
	}

	t = clock();

	try {
		GRBEnv env = GRBEnv();
		//env.set(GRB_DoubleParam_TimeLimit, 1800.0);	// tempo limite de 30min
		env.set(GRB_IntParam_OutputFlag, 0);		// não imprimir  os detalhes da otimização

		GRBModel model = GRBModel(env);
		model.set("Method", "0");			// força resolver o LP usando Simplex
		model.set(GRB_IntAttr_ModelSense, GRB_MINIMIZE);
		model.set(GRB_IntParam_Presolve, 0);		// desabilita presolve

		GRBLinExpr* constraints = new GRBLinExpr[links];
		fill(constraints, constraints + links, 0);

		enumerator = new Enumerator(network, &model, constraints);
		enumerator->find_fset_entry();
		fsets = enumerator->get_fset();

		if (fsets == 0) {
			cout << "ERROR: Too many feasible sets (>max)" << endl;
			cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t" << fsets << "\t0\t0\t0.0\t0.0\t0.0\t0.0\t0.0\t0.0\t3" << endl;
			return 0;
		}

		cout << aside << "\t" << netid << "\t" << nodes << "\t" << alpha << "\t" << links << "\t" << fsets << "\t" << flush;

		for(uint64_t i = 0; i < links; i++) model.addConstr(constraints[i], GRB_EQUAL, 1);

		delete enumerator;
		delete network;

		tt = clock();

		model.optimize();
		zLP = model.get(GRB_DoubleAttr_ObjVal);
		if((zLP - floor(zLP)) < THRESHOLD) zLP = floor(zLP);
		if((ceil(zLP) - zLP)  < THRESHOLD) zLP = ceil(zLP);
 	
		GRBVar* vars = model.getVars();

		fract = false;
		y = 0.0;
		for (uint64_t i = 0; i < fsets; i++) {
			y = vars[i].get(GRB_DoubleAttr_X);
				if((y>0)&&(y<1)) {
					fract = true;
					break;
				}
				/*
				if((y - floor(y)) > THRESHOLD) {
					fract = true;
					break;
				}
				if((ceil(y) - y) > THRESHOLD) {
					fract = true;
					break;
				}
				*/
		}

		ttt = clock();

		if (fract) {
			for(uint64_t i = 0; i < fsets; i++) vars[i].set(GRB_CharAttr_VType, GRB_BINARY);

			model.update();
			model.optimize();

			zIP = model.get(GRB_DoubleAttr_ObjVal);
			if((zIP - floor(zIP)) < THRESHOLD) zIP = floor(zIP);
			if((ceil(zIP) - zIP)  < THRESHOLD) zIP = ceil(zIP);
			
		} else {
			zIP = zLP;
		}

		delete[] vars;

		tttt = clock();

		if (zLP < zIP) multi = true;
		else multi = false;

		ratio = zLP / zIP;
		enumt = double(tt - t)     / CLOCKS_PER_SEC;
		linpt = double(ttt - tt)   / CLOCKS_PER_SEC;
		intpt = double(tttt - ttt) / CLOCKS_PER_SEC;

		cout << fract << "\t" << multi << "\t" << fixed << zLP << "\t" << zIP << "\t" << ratio << "\t" << enumt << "\t" << linpt << "\t" << intpt << "\t0" << endl;

		return 0;
	}
	catch(GRBException e) {
		cout << "ERROR: Gurobi exception" << endl;
		cout << "Error code = " << e.getErrorCode() << endl;
	}
	catch(...) {
		cout << "ERROR: General exception" << endl;
		cout << "Exception during optimization" << endl;
	}
}
