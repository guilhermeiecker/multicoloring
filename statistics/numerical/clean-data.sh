#! /bin/bash

for aside in 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000
do
	for nodes in 10 20 30 40 50 60 70 80 90 100
	do
		output="$(/home/guilherme/multicoloring/data-cleaner/cleaner.exe $aside-$nodes.txt)"
		countSample=0
		countMulti=0
		countFract=0
		#sumRatio=0

		IFS=$'\n' read -r -a lines -d '' <<< "$output"
		for line in "${lines[@]}"
		do
			countSample=$((countSample+1))
			#sumRatio="$(echo "$sumRatio + ${columns[12]}" | bc -l)"
			IFS=$'\t' read -r -a columns -d '' <<< "$line"

			if [ "${columns[8]}" == "1" ]; then
				countFract=$((countFract+1))
			fi
			if [ "${columns[9]}" == "1" ]; then
				countMulti=$((countMulti+1))
			fi
		done

		echo "$aside	$nodes	$countSample	$countFract	$countMulti" >> ../data/numerical-$aside.txt
	done
done
