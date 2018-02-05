#include <iostream>
#include <fstream>
#include <string>
#include <math.h>

#define THRESHOLD 0.00001

using namespace std;

int main (int argc, char** argv) {
	string inFileName;
	ifstream in;

	double aside, alpha, betaa, power, zLP, zIP, ratio, enumt, linpt, intpt;
	uint64_t netid, nodes, links, fsets, fract, multi, sflag;

	inFileName  = "/home/guilherme/multicoloring/data-cleaner/processed-data/" + (string)argv[1];

	in.open(inFileName);

	while (in >> aside >> netid >> nodes >> power >> alpha >> betaa >> links >> fsets >> fract >> multi >> zLP >> zIP >> ratio >> enumt >> linpt >> intpt >> sflag) {
		if (!sflag) {
			if (zLP - floor(zLP) < THRESHOLD) zLP = floor(zLP);
			if (ceil(zLP) - zLP  < THRESHOLD) zLP = ceil(zLP);
			if (zIP - floor(zIP) < THRESHOLD) zIP = floor(zIP);
			if (ceil(zIP) - zIP  < THRESHOLD) zIP = ceil(zIP);

			ratio = zLP/zIP;

			if (ratio - floor(ratio) < THRESHOLD) ratio = floor(ratio);
			if (ceil(ratio) - ratio  < THRESHOLD) ratio = ceil(ratio);

			cout << aside << "\t" << netid << "\t" << nodes << "\t" << power << "\t" << alpha << "\t" << betaa << "\t" << links << "\t" << fsets << "\t" << fract << "\t" << multi << "\t" << zLP << "\t" << zIP << "\t" << ratio << "\t" << enumt << "\t" << linpt << "\t" << intpt << "\t" << sflag << "\t" << endl;
		}		
	}

	in.close();

	return 0; 
}
