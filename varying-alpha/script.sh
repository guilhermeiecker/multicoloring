#!/bin/bash
# reads files of the format
#   0   |   1   |   2   |   3   |   4   |   5   |   6   |  7  |  8  |   9   |  10   |  11   |   12    |
# aside | netid | nodes | alpha | links | fsets | fract | zLP | zIP | enumt | linpt | intpt | success |

for AREA in 10000 9000 8000 7000 6000
do
	for NETID in {1..250}		#super
	#for NETID in {251..500}	#node10
	#for NETID in {501..750}	#gandalf1
	#for NETID in {751..1000}	#gandalf2
	do
		FLAG=false
		for NODE in 10 20 30 40 50 60 70 80 90 100
		do
			for ALPHA in 3.0 3.2 3.4 3.6 3.8 4.0
			do
				echo "Running for $AREA $NETID $NODE $ALPHA"
				./main.exe $AREA $NETID $NODE $ALPHA >> results/$AREA-$NODE.txt
			done
		done 
	done
done
