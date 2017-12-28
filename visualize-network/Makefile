# Copyright 2016, Gurobi Optimization, Inc.

CPP      = g++
CARGS    = -m64 -g

scheduler: main.cpp
	$(CPP) $(CARGS) -std=c++11 main.cpp -o main.exe -lm

clean:
	rm main.exe
