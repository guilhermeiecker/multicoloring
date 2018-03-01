#include <iostream>	// cout, endl
#include <math.h>	// pow
#include <stdint.h>	// uint64_t
#include <vector>
//#include "gurobi_c++.h"	// GRB*classes*

using namespace std;

// edges: number of edges
// fsets: number of feasible sets
// combs: number of combinations of columns

//void solve_model(uint64_t);

int main(int argc, char** argv) {
	uint64_t edges, fsets, combs;
	uint64_t p, q, r, variables_idx, basics_idx, idx;
	vector<uint64_t> current;

	edges = (uint64_t)atoi(argv[1]);
	if ((edges==0)||(edges>5)) {
		cout << "ERROR: m is out of range, must be in the interval 0 < m < 6)" << endl;
		return 0;
	}
	fsets = (uint64_t)pow(2,edges) - 1 - edges;

	uint64_t** variables = new uint64_t*[edges];
	for(uint64_t i = 0; i < edges; i++) variables[i] = new uint64_t[fsets];

	uint64_t** basics = new uint64_t*[edges];
	for(uint64_t i = 0; i < edges; i++) basics[i] = new uint64_t[edges];

	variables_idx = 0;
	basics_idx = 0;
	for(uint64_t j = 1; j <= fsets + edges; j++) {
		p = j;
		if(((p & (p - 1)) != 0)) {
			for(uint64_t i = 0; i < edges; i++) {
				variables[i][variables_idx] = p % 2;
				p = p / 2;
			}
			variables_idx++;
		} else {
			for(uint64_t i = 0; i < edges; i++) {
				basics[i][basics_idx] = p % 2;
				p = p / 2;
			}
			basics_idx++;
		}
	}

	combs = (uint64_t)pow(2,fsets);
	cout << combs << endl;

	for(uint64_t j = 0; j < combs; j++) {
		cout << j << endl;
		p = j;
		idx = 0;
		do {
			q = p / 2; // q = p >> 2;
			r = p % 2; // r = p &  1;
			if(r == 1) current.push_back(idx);
			p = q;
			idx++;
			
		} while(q > 0);

		for(uint64_t i = 0; i < edges; i++) {
			for(uint64_t j = 0; j < edges; j++) {
				cout << basics[i][j] << " ";
			}
			for (vector<uint64_t>::iterator j = current.begin(); j != current.end(); ++j) {
				cout << variables[i][*j] << " ";
			}
			cout << endl;
		}

		current.clear();
	}
	

	//for(uint64_t i = 0; i < combs; i++) solve_model(i);

	return 0;
}
/*
void solve_model(uint64_t combination) {
	try {
		GRBEnv env = GRBEnv();
		env.set(GRB_IntParam_OutputFlag, 0);		// não imprimir  os detalhes da otimização

		GRBModel model = GRBModel(env);
		model.set("Method", "0");			// força resolver o LP usando Simplex
		model.set(GRB_IntParam_Presolve, 0);		// desabilita presolve
		model.set(GRB_IntAttr_ModelSense, GRB_MINIMIZE);
		
		
		


		model.optmize();
		double z = model.get(GRB_DoubleAttr_ObjVal);
		GRBVar* vars = model.getVars();
	
		double y;	
		for (uint64_t i = 0; i < fsets; i++) {
			y = vars[i].get(GRB_DoubleAttr_X);
			if ((y>0)&&(y<1)) {
				cout << z << "\t" << combination;	
				break;
			}
		}
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
*/
