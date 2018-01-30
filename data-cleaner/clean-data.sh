#! /bin/bash


for aside in 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000
do
	for nodes in 10 20 30 40 50 60 70 80 90 100
	do
		cat original-data/$aside-$nodes.txt | grep -P "(\d+\t){10}(\d+.\d+\t){6}0" >> clean-data/$aside-$nodes.txt
		./main.exe $aside-$nodes.txt
	done
done
