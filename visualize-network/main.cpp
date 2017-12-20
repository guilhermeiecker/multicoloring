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
#include <ctime>	// clock
#include <limits>

#include "Enumerator.h"
#include "gurobi_c++.h"

typedef unsigned __int128 uint128_t;
typedef std::numeric_limits< double > dbl;

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
	double y, zLP, zIP, ratio;
	double enumt, linpt, intpt; // enumt: enumeration time; linpt: simplex time; intpt: b&b time
	bool fract, multi;

	Network* network;

	srand(netid);

	network = new Network(nodes, aside, 300.0, alpha);

	network->printNetwork();
}
