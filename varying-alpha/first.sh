#!/bin/bash
# reads files of the format
#   0   |   1   |   2   |   3   |   4   |   5   |  6   |  7  |  8  |   9   |  10   |  11   |
# aside | netid | nodes | links | fsets | alpha | frac | zLP | zIP | enumt | linpt | intpt |

for AREA in 12000 10000 8000 6000
do
	for NETID in {1..1000}
	do
		FLAG=false
		#for NODE in 10 20 30 40 50 60 70 80 90 100
		for NODE in 110 120 130 140 150 160 170 180 190 200
		do
			if $FLAG; then
				break
			fi

			for ALPHA in 3.9 3.8 3.7 3.6 3.5 3.4 3.3 3.2 3.1 3.0
			do
				echo "Running for $AREA $NETID $NODE $ALPHA"
				SAIDA="$(./main.exe $AREA $NETID $NODE $ALPHA)"
				IFS=$'\n' read -r -a linhas -d '' <<< "$SAIDA" # remove a linha obrigatoria impressa pelo gurobi em versao 7.5
				CONTENT="${linhas[1]}"
				if [[ $CONTENT == *"ERROR1"* ]]; then
					FLAG=true
					break
				fi
				echo "$CONTENT" >> results/$AREA-$NETID-$NODE-$ALPHA.txt
			done
		done 
	done
done
