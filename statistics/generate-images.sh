#! /bin/bash

for experimentType in geral multi fract splittedMulti splittedFract
do
	for xaxisType in nodes links fsets
	do
		gnuplot $experimentType-$xaxisType.gnu
	done
done
