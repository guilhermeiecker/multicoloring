#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:1000]
set xrange [0:100]
set xlabel "Number of Nodes"
set ylabel "Number of Drops"
set grid
set output "images/results2.eps"
set title 'Number of Drops x Number of Nodes'

set multiplot layout 3,1 rowsfirst

set key inside top right
set title 'm=0'
plot    "data/dropped-10000.txt" u 1:2 w linespoints t "10km" lt rgb "red", \
	"data/dropped-9000.txt"  u 1:2 w linespoints t "9km"  lt rgb "green", \
	"data/dropped-8000.txt"  u 1:2 w linespoints t "8km"  lt rgb "black", \
	"data/dropped-7000.txt"  u 1:2 w linespoints t "7km"  lt rgb "blue", \
	"data/dropped-6000.txt"  u 1:2 w linespoints t "6km"  lt rgb "yellow", \
	"data/dropped-5000.txt"  u 1:2 w linespoints t "5km"  lt rgb "pink", \
	"data/dropped-4000.txt"  u 1:2 w linespoints t "4km"  lt rgb "purple", \
	"data/dropped-3000.txt"  u 1:2 w linespoints t "3km"  lt rgb "brown", \
	"data/dropped-2000.txt"  u 1:2 w linespoints t "2km"  lt rgb "orange", \
	"data/dropped-1000.txt"  u 1:2 w linespoints t "1km"  lt rgb "cyan", \

set key off
set title 'm>128'
plot    "data/dropped-10000.txt" u 1:3 w linespoints t "10km" lt rgb "red", \
	"data/dropped-9000.txt"  u 1:3 w linespoints t "9km"  lt rgb "green", \
	"data/dropped-8000.txt"  u 1:3 w linespoints t "8km"  lt rgb "black", \
	"data/dropped-7000.txt"  u 1:3 w linespoints t "7km"  lt rgb "blue", \
	"data/dropped-6000.txt"  u 1:3 w linespoints t "6km"  lt rgb "yellow", \
	"data/dropped-5000.txt"  u 1:3 w linespoints t "5km"  lt rgb "pink", \
	"data/dropped-4000.txt"  u 1:3 w linespoints t "4km"  lt rgb "purple", \
	"data/dropped-3000.txt"  u 1:3 w linespoints t "3km"  lt rgb "brown", \
	"data/dropped-2000.txt"  u 1:3 w linespoints t "2km"  lt rgb "orange", \
	"data/dropped-1000.txt"  u 1:3 w linespoints t "1km"  lt rgb "cyan", \

set key off
set yrange [0:50]
set title 'f>50M'
plot    "data/dropped-10000.txt" u 1:4 w linespoints t "10km" lt rgb "red", \
	"data/dropped-9000.txt"  u 1:4 w linespoints t "9km"  lt rgb "green", \
	"data/dropped-8000.txt"  u 1:4 w linespoints t "8km"  lt rgb "black", \
	"data/dropped-7000.txt"  u 1:4 w linespoints t "7km"  lt rgb "blue", \
	"data/dropped-6000.txt"  u 1:4 w linespoints t "6km"  lt rgb "yellow", \
	"data/dropped-5000.txt"  u 1:4 w linespoints t "5km"  lt rgb "pink", \
	"data/dropped-4000.txt"  u 1:4 w linespoints t "4km"  lt rgb "purple", \
	"data/dropped-3000.txt"  u 1:4 w linespoints t "3km"  lt rgb "brown", \
	"data/dropped-2000.txt"  u 1:4 w linespoints t "2km"  lt rgb "orange", \
	"data/dropped-1000.txt"  u 1:4 w linespoints t "1km"  lt rgb "cyan", \
