# Copyright 2016, Gurobi Optimization, Inc.

PLATFORM = linux64
INC      = $(GUROBI_HOME)/include/
CC       = gcc
CPP      = g++
CARGS    = -m64 -g
CLIB     = -L$(GUROBI_HOME)/lib/ #-lgurobi70
CPPLIB   = -L$(GUROBI_HOME)/lib/ -lgurobi_c++ -lgurobi75 #gandalf75

all: cleaner

cleaner: cleaner.cpp
	cp ../physical/results/* ./original-data
	$(CPP) $(CARGS) -std=c++11 cleaner.cpp -o cleaner.exe -lm

clean:
	rm *.exe

clean-original:
	rm original-data/*

clean-processed:
	rm processed-data/*

clean-geral:
	rm geral-nodes-data/* geral-links-data/* geral-fsets-data/*

clean-fract:
	rm fract-nodes-data/* fract-links-data/* fract-fsets-data/*

clean-multi:
	rm multi-nodes-data/* multi-links-data/* multi-fsets-data/*

clean-notfract:
	rm notfract-nodes-data/* notfract-links-data/* notfract-fsets-data/*

clean-notmulti:
	rm notmulti-nodes-data/* notmulti-links-data/* notmulti-fsets-data/*

clean-data: clean-original clean-processed clean-geral clean-fract clean-multi clean-notfract clean-notmulti

clean-all: clean clean-data
