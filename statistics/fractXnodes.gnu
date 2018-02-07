#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set xrange [8:102]
set xlabel "Number of Nodes"
set grid

# LINKS X NODES
set output "images/fractXnodes.eps"
set ylabel "% of Weak Multicolorings"
set title 'Weak Multicoloring x Number of Nodes'
set key inside top left

plot	"data/geral-nodes-10000.txt" u 4:($20*100) w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:($20*100) w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:($20*100) w linespoints notitle lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:($20*100) w linespoints notitle lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:($20*100) w linespoints notitle lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:($20*100) w linespoints notitle lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:($20*100) w linespoints notitle lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:($20*100) w linespoints notitle lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:($20*100) w linespoints notitle lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:($20*100) w linespoints notitle lt rgb "cyan"
