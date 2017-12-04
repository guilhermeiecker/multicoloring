# Copyright 2016, Gurobi Optimization, Inc.

PLATFORM = linux64
INC      = $(GUROBI_HOME)/include/
CC       = gcc
CPP      = g++
CARGS    = -m64 -g
CLIB     = -L$(GUROBI_HOME)/linux64/lib/ -lgurobi70
CPPLIB   = -L$(GUROBI_HOME)/linux64/lib/ -lgurobi_c++ -lgurobi70

scheduler: main.cpp
	$(CPP) $(CARGS) -std=c++11 main.cpp -o main.exe -I$(INC) $(CPPLIB) -lm

clean:
	rm main.exe

clean-all: clean
	rm results/*
	rm networks/*
