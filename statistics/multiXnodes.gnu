#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set xrange [8:102]
set xlabel "Number of Nodes"
set grid

# LINKS X NODES
set output "images/multiXnodes.eps"
set ylabel "% of Strong Multicolorings"
set title 'Strong Multicoloring x Number of Nodes'
set key inside top left

plot	"data/geral-nodes-10000.txt" u 4:($22*100) w linespoints t "10km" lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:($22*100) w linespoints t "9km" lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:($22*100) w linespoints t "8km" lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:($22*100) w linespoints t "7km" lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:($22*100) w linespoints t "6km" lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:($22*100) w linespoints t "5km" lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:($22*100) w linespoints t "4km" lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:($22*100) w linespoints t "3km" lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:($22*100) w linespoints t "2km" lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:($22*100) w linespoints t "1km" lt rgb "cyan"
