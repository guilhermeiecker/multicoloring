#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set xrange [8:102]
set xlabel "Number of Nodes"
set grid

# LogFSETS X NODES
set output "images/logfsetsXnodes.eps"
set ylabel "Log Number of Feasible Sets"
set title 'Log Number of Links x Number of Nodes'
set key inside top left

plot	"data/geral-nodes-10000.txt" u 4:16:17 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:16 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:16:17 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:16 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:16:17 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:16 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:16:17 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:16 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:16:17 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:16 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:16:17 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:16 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:16:17 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:16 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:16:17 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:16 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:16:17 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:16 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:16:17 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:16 w linespoints notitle lt rgb "cyan"
