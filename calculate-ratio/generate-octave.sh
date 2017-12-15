#!/bin/bash
# reads files of the format
#   0   |   1   |   2   |   3   |   4   |   5   |   6   |   7   |  8  |  9  |   A   |   B   |   C   |   D   |   E   |
# aside | netid | nodes | alpha | links | fsets | fract | multi | zLP | zIP | ratio | enumt | linpt | intpt | sflag |

for AREA in 10000 9000 8000 7000 6000 5000
do
	for NETID in {1..1000}	#gandalf1
	do
		for NODE in 10 20 30 40 50 60 70 80 90 100
		do
			echo "Running for $AREA $NETID $NODE 4.0"
			./main.exe $AREA $NETID $NODE 4.0 >> results/$AREA-$NODE.txt
		done
	done
done
