#include <iostream>
#include <fstream>
#include <string>
#include <math.h>

#define THRESHOLD 0.00001

using namespace std;


uint64_t order(uint64_t x)  
{   
    return (x < 10 ? 1 :   
        (x < 100 ? 2 :   
        (x < 1000 ? 3 :   
        (x < 10000 ? 4 :   
        (x < 100000 ? 5 :   
        (x < 1000000 ? 6 :   
        (x < 10000000 ? 7 :  
        (x < 100000000 ? 8 :  
        (x < 1000000000 ? 9 : 10)))))))));  
}  

int main (int argc, char** argv) {
	string inFileName;
	ifstream in;

	double aside, alpha, betaa, power, zLP, zIP, ratio, enumt, linpt, intpt;
	uint64_t netid, nodes, links, fsets, fract, multi, sflag, ordem_fset;
	double log_fsets, log_enumt, log_linpt, log_intpt, throughputLP, throughputIP ;

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
		
			log_fsets = (fsets == 0) ? 0 : log10(fsets);
			log_enumt = (enumt == 0) ? 0 : log10(enumt);
			log_linpt = (linpt == 0) ? 0 : log10(linpt);
			log_intpt = (intpt == 0) ? 0 : log10(intpt);

			throughputLP = (zLP == 0) ? 0: 1/zLP;
			throughputIP = (zIP == 0) ? 0: 1/zIP;
			ordem_fset = order(fsets);

			cout 	<< aside << "\t" << netid << "\t" << nodes << "\t" << power << "\t" << alpha << "\t" 
				<< betaa << "\t" << links << "\t" << fsets << "\t" << log_fsets << "\t" << ordem_fset << "\t"
				<< fract << "\t" << multi << "\t" << zLP << "\t" << throughputLP << "\t" << zIP << "\t" 
				<< throughputIP << "\t" << ratio << "\t" << enumt << "\t" << log_enumt << "\t" << linpt << "\t" 
				<< log_linpt << "\t" << intpt << "\t" << log_intpt << "\t" << sflag << "\t" 
			<< endl;
		}		
	}

	in.close();

	return 0; 
}
