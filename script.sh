#!/bin/bash
# reads files of the format
# aside | netid | nodes | links | fsets | multi | objfn | sflag | time
# writes files of the format
# aside | netid | nodes | links | fsets | multi | zlp   | zip   | sflag | ttime

for AREA in 10000 9000 8000 7000 6000
do
	for NODE in {2..120}
	do
		while read line; do
			IFS=', ' read -r -a array <<< "$line"
			if [ ${array[5]} -gt 1 ]
      then
        ./main ${array[0]} ${array[1]} ${array[2]} >> results/${array[0]}-${array[2]}.txt
			else
				echo "${array[0]}\t${array[1]}\t${array[2]}\t${array[3]}\t${array[4]}\t${array[5]}\t${array[6]}\t${array[6]}\t${array[6]}\t${array[7]}\t${array[8]}" >> results/${array[0]}-${array[2]}.txt
      fi
		done <"/home/guilherme/physmodel/results/$AREA-$NODE.txt"
	done
done
