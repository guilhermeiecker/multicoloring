#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Feasible Sets"
set xrange [0:102]
set key top left
set output "images/multi-fsets.eps"

###### ZLP ######################################

set title "Average Linear Solution x Number of Feasible Sets"
#set output "images/zlpxn.eps"
set ylabel "Average Linear Solution"

#### ZLP X LINKS
plot	"data/multi-fsets-10000.txt" u 12:20 w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:20 w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:20 w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:20 w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:20 w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:20 w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:20 w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:20 w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:20 w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:20 w linespoints notitle lt rgb "cyan"

#### 1/ZLP X LINKS
plot	"data/multi-fsets-10000.txt" u 12:(1/$20) w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "cyan"

#### ZLP/LINKS X LINKS
plot	"data/multi-fsets-10000.txt" u 12:($20/$12) w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "cyan"

###### ZIP ######################################

set title "Average Integer Solution x Number of Feasible Sets"
#set output "images/zipxn.eps"
set ylabel "Average Integer Solution"

plot	"data/multi-fsets-10000.txt" u 12:22 w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:22 w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:22 w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:22 w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:22 w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:22 w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:22 w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:22 w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:22 w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:22 w linespoints notitle lt rgb "cyan"

#### 1/ZIP X LINKS
plot	"data/multi-fsets-10000.txt" u 12:(1/$22) w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "cyan"

#### ZIP/LINKS X LINKS
plot	"data/multi-fsets-10000.txt" u 12:($22/$12) w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "cyan"

###### RATIO ######################################

set title "Average Ratio x Number of Feasible Sets"
#set output "images/ratioxn.eps"
set ylabel "Average Ratio"

plot	"data/multi-fsets-10000.txt" u 12:24 w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:24 w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:24 w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:24 w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:24 w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:24 w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:24 w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:24 w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:24 w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:24 w linespoints notitle lt rgb "cyan"

###### ENUMT ######################################

set title "Enumeration Time x Number of Feasible Sets"
#set output "images/enumtxn.eps"
set ylabel "Enumeration Time (s)"

plot	"data/multi-fsets-10000.txt" u 12:26 w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:26 w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:26 w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:26 w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:26 w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:26 w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:26 w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:26 w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:26 w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:26 w linespoints notitle lt rgb "cyan"

###### LINPT ######################################

set title "Linear Program Solution Time x Number of Feasible Sets"
#set output "images/linptxn.eps"
set ylabel "Linear Program Solution Time (s)"

plot	"data/multi-fsets-10000.txt" u 12:28 w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:28 w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:28 w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:28 w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:28 w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:28 w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:28 w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:28 w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:28 w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:28 w linespoints notitle lt rgb "cyan"

###### INTPT ######################################

set title "Integer Program Solution Time x Number of Feasible Sets"
#set output "images/intptxn.eps"

set ylabel "Integer Program Solution Time (s)"

plot	"data/multi-fsets-10000.txt" u 12:30 w linespoints notitle lt rgb "red", \
	"data/multi-fsets-9000.txt"  u 12:30 w linespoints notitle lt rgb "green", \
	"data/multi-fsets-8000.txt"  u 12:30 w linespoints notitle lt rgb "black", \
 	"data/multi-fsets-7000.txt"  u 12:30 w linespoints notitle lt rgb "blue", \
 	"data/multi-fsets-6000.txt"  u 12:30 w linespoints notitle lt rgb "yellow", \
 	"data/multi-fsets-5000.txt"  u 12:30 w linespoints notitle lt rgb "pink", \
 	"data/multi-fsets-4000.txt"  u 12:30 w linespoints notitle lt rgb "purple", \
 	"data/multi-fsets-3000.txt"  u 12:30 w linespoints notitle lt rgb "brown", \
 	"data/multi-fsets-2000.txt"  u 12:30 w linespoints notitle lt rgb "orange", \
 	"data/multi-fsets-1000.txt"  u 12:30 w linespoints notitle lt rgb "cyan"
