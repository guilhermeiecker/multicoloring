#! /bin/bash

for experimentType in GERAL MULTI FRACT NOTMULTI NOTFRACT
do
	for xaxisType in NODES LINKS FSETS
	do
		tclsh simula.tcl $experimentType-$xaxisType
	done
done
