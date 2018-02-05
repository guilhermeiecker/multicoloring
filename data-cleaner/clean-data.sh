#! /bin/bash

for aside in 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000
do
	for nodes in 10 20 30 40 50 60 70 80 90 100
	do
		cat original-data/$aside-$nodes.txt | grep -P "(\d+\t){10}(\d+.\d+\t){6}0" >> processed-data/$aside-$nodes.txt
		output="$(./cleaner.exe $aside-$nodes.txt)"

		IFS=$'\n' read -r -a lines -d '' <<< "$output"
		for line in "${lines[@]}"
		do
			IFS=$'\t' read -r -a columns -d '' <<< "$line"
			links="${columns[6]}"
			fsets="${#columns[7]}"

			string1="${columns[0]}	${columns[1]}	${columns[2]}	${columns[3]}	${columns[4]}	${columns[5]}	${columns[6]}	${columns[7]}	${columns[8]}	${columns[9]}	${columns[10]}	${columns[11]}	${columns[12]}	${columns[13]}	${columns[14]}	${columns[15]}	${columns[16]}"
			string2="${columns[0]}	${columns[1]}	${columns[2]}	${columns[3]}	${columns[4]}	${columns[5]}	${columns[6]}	$fsets	${columns[8]}	${columns[9]}	${columns[10]}	${columns[11]}	${columns[12]}	${columns[13]}	${columns[14]}	${columns[15]}	${columns[16]}"

			#DADOS: NODES e LINKS
			echo "$string1" >> geral-nodes-data/$aside-$nodes.txt 
			echo "$string1" >> geral-links-data/$aside-$links.txt
			echo "$string2" >> geral-fsets-data/$aside-$fsets.txt

			if [ "${columns[8]}" == "1" ]; then
				#DADOS: FRACT-NODES e FRACT-LINKS
				echo "$string1" >> fract-nodes-data/$aside-$nodes.txt
				echo "$string1" >> fract-links-data/$aside-$links.txt
				echo "$string2" >> fract-fsets-data/$aside-$fsets.txt
				if [ "${columns[9]}" == "1" ]; then
					if [ "${columns[10]}" != "${columns[11]}" ]; then
						#DADOS: MULTI-NODES e MULTI-LINKS
						echo "$string1" >> multi-nodes-data/$aside-$nodes.txt
						echo "$string1" >> multi-links-data/$aside-$links.txt
						echo "$string2" >> multi-fsets-data/$aside-$fsets.txt
					fi
				else
						echo "$string1" >> notmulti-nodes-data/$aside-$nodes.txt
						echo "$string1" >> notmulti-links-data/$aside-$links.txt
						echo "$string2" >> notmulti-fsets-data/$aside-$fsets.txt
				fi
			else
				#DADOS: NOTFRACT-NODES e NOTFRACT-LINKS
				echo "$string1" >> notfract-nodes-data/$aside-$nodes.txt
				echo "$string1" >> notfract-links-data/$aside-$links.txt
				echo "$string2" >> notfract-fsets-data/$aside-$fsets.txt
			fi
		done
	done
done
