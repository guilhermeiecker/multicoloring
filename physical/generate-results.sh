#!/bin/bash
# reads files of the format
#   0   |   1   |   2   |   3   |   4   |   5   |   6   |   7   |  8  |  9  |   A   |   B   |   C   |   D   |   E   |
# aside | netid | nodes | alpha | links | fsets | fract | multi | zLP | zIP | ratio | enumt | linpt | intpt | sflag |

# flag legend
# 0 -> success
# 1 -> m = 0
# 2 -> m > 128
# 3 -> f > max

for power in 300 #100 200 400 500
do
	for beta in 25 #10 15 20 30 35 40
	do
		for alpha in 4 #2 3 5
		do
			for aside in 8000
			do
				for netid in {386..1000}
				do
					for nodes in 100
					do
						echo "Running for $aside $netid $nodes $power $alpha $beta"
                                                output="$(./main.exe $aside $netid $nodes $power $alpha $beta)"
                                                IFS=$'\n' read -r -a array1 -d '' <<< "$output"
                                                if [[ "${array1[0]}" == *"ERROR"* ]]; then
                                                        continue
                                                fi
                                                IFS=$'\t' read -r -a array2 <<< "${array1[1]}"
                                                echo "${array1[1]}" >> results/$aside-$nodes.txt
                                                if [[ "${array[16]}" -gt 1 ]]; then
                                                        break
                                                fi
					done
				done
			done

			for aside in 7000 6000 5000 4000 3000 2000 1000 
			do
				for netid in {1..1000}
				do
					for nodes in 80 90 100
					do
						echo "Running for $aside $netid $nodes $power $alpha $beta"
						output="$(./main.exe $aside $netid $nodes $power $alpha $beta)"
						IFS=$'\n' read -r -a array1 -d '' <<< "$output"
						if [[ "${array1[0]}" == *"ERROR"* ]]; then
							continue
						fi
						IFS=$'\t' read -r -a array2 <<< "${array1[1]}"
						echo "${array1[1]}" >> results/$aside-$nodes.txt
						if [[ "${array[16]}" -gt 1 ]]; then
							break
						fi
					done
				done
			done
		done
	done
done
