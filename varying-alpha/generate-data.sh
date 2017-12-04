#!/bin/bash
# reads files of the format
#   0   |   1   |   2   |   3   |   4   |   5   |  6   |  7  |  8  |   9   |  10   |  11   |
# aside | netid | nodes | links | fsets | alpha | frac | zLP | zIP | enumt | linpt | intpt |

for AREA in 12000 11000 10000 9000 8000 7000 6000
do
			for ALPHA in 3.9 3.8 3.7 3.6 3.5 3.4 3.3 3.2 3.1 3.0
			do
				cat results/$AREA-*-$ALPHA.txt | grep -v ERROR >> data/$AREA-$ALPHA.dat
			done
done
