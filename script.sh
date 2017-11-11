#!/bin/bash
# reads files of the format
# aside | netid | nodes | links | fsets | multi | objfn | sflag | time
# writes files of the format
# aside | netid | nodes | links | fsets | multi | zlp   | zip   | sflag | ttime

for AREA in 9000 8000
do
	//for NODE in {119..120}
	for NODE in 10 20 30 40 50 60 70 80 90 100
	do
		while read line; do
			echo $line
			IFS="	" read -r -a array <<< "$line"
			if [ ${array[5]} -eq 1 ]
			then
        			LINE="$(./main.exe ${array[0]} ${array[1]} ${array[2]} ${array[6]})"
				echo $LINE >> results/${array[0]}-${array[2]}.txt
			else
			echo "${array[0]}	${array[1]}	${array[2]}	${array[3]}	${array[4]}	${array[5]}	${array[6]}	${array[6]}	${array[7]}	${array[8]}	${array[9]}" >> results/${array[0]}-${array[2]}.txt
      			fi
		done <"/home/guilherme/data/$AREA-$NODE.txt"
	done
done
