#!/bin/bash
# reads files of the format
#   0   |   1   |   2   |   3   |   4   |   5   |   6   |   7   |  8  |  9  |   A   |   B   |   C   |   D   |   E   |
# aside | netid | nodes | alpha | links | fsets | fract | multi | zLP | zIP | ratio | enumt | linpt | intpt | sflag |

for AREA in 10000 9000 8000 7000 6000 5000
do
	for NODE in 10 20 30 40 50 60 70 80 90 100
	do
		while IFS='' read -r line || [[ -n "$line" ]]; do
			IFS=$'\t' read -r -a array <<< "$line"
			echo "${array[0]}	${array[2]}	${array[4]}" >> gnuplot-results/links-${array[0]}-${array[2]}.dat
			echo "${array[0]}	${array[2]}	${array[5]}" >> gnuplot-results/fsets-${array[0]}-${array[2]}.dat

			if [ "${array[14]}" == "1" ]; then
				echo "${array[0]}	${array[2]}	${array[6]}" >>  gnuplot-results/fract-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[7]}" >>  gnuplot-results/multi-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[8]}" >>  gnuplot-results/zlp-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[9]}" >>  gnuplot-results/zip-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[10]}" >> gnuplot-results/ratio-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[11]}" >> gnuplot-results/enunt-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[12]}" >> gnuplot-results/linpt-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[13]}" >> gnuplot-results/intpt-${array[0]}-${array[2]}.dat
			fi

			if [ "${array[7]}" == "1" ]; then
				echo "${array[0]}	${array[2]}	${array[4]}" >> gnuplot-results/links-${array[0]}-${array[2]}.dat
				echo "${array[0]}	${array[2]}	${array[5]}" >> gnuplot-results/fsets-${array[0]}-${array[2]}.dat

				if [ "${array[14]}" == "1" ]; then
					echo "${array[0]}	${array[2]}	${array[6]}" >>  gnuplot-results/fract-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[7]}" >>  gnuplot-results/multi-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[8]}" >>  gnuplot-results/zlp-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[9]}" >>  gnuplot-results/zip-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[10]}" >> gnuplot-results/ratio-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[11]}" >> gnuplot-results/enunt-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[12]}" >> gnuplot-results/linpt-${array[0]}-${array[2]}.dat
					echo "${array[0]}	${array[2]}	${array[13]}" >> gnuplot-results/intpt-${array[0]}-${array[2]}.dat
				fi
			fi
		done < "results/$AREA-$NODE.txt"
	done
done
