#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Links"
set xrange [0:102]
set key top left
set output "images/fract-links.eps"

###### FSETS ######################################

set title "Number of Feasible Sets x Number of Links"
#set output "images/fxn.eps"
set ylabel "Number of Feasible Sets"

plot	"data/fract-links-10000.txt" u 12:14 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:14 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:14 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:14 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:14 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:14 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:14 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:14 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:14 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:14 w linespoints notitle lt rgb "cyan"

set ylabel "Log10 of Number of Feasible Sets"

plot	"data/fract-links-10000.txt" u 12:(log10($14)) w linespoints t "10km" lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:(log10($14)) w linespoints t "9km" lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:(log10($14)) w linespoints t "8km" lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:(log10($14)) w linespoints t "7km" lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:(log10($14)) w linespoints t "6km" lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:(log10($14)) w linespoints t "5km" lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:(log10($14)) w linespoints t "4km" lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:(log10($14)) w linespoints t "3km" lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:(log10($14)) w linespoints t "2km" lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:(log10($14)) w linespoints t "1km" lt rgb "cyan"

###### ZLP ######################################

set title "Average Linear Solution x Number of Links"
#set output "images/zlpxn.eps"
set ylabel "Average Linear Solution"

#### ZLP X LINKS
plot	"data/fract-links-10000.txt" u 12:20 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:20 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:20 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:20 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:20 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:20 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:20 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:20 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:20 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:20 w linespoints notitle lt rgb "cyan"

#### 1/ZLP X LINKS
plot	"data/fract-links-10000.txt" u 12:(1/$20) w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "cyan"

#### ZLP/LINKS X LINKS
plot	"data/fract-links-10000.txt" u 12:($20/$12) w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "cyan"

###### ZIP ######################################

set title "Average Integer Solution x Number of Links"
#set output "images/zipxn.eps"
set ylabel "Average Integer Solution"

plot	"data/fract-links-10000.txt" u 12:22 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:22 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:22 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:22 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:22 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:22 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:22 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:22 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:22 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:22 w linespoints notitle lt rgb "cyan"

#### 1/ZIP X LINKS
plot	"data/fract-links-10000.txt" u 12:(1/$22) w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "cyan"

#### ZIP/LINKS X LINKS
plot	"data/fract-links-10000.txt" u 12:($22/$12) w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "cyan"

###### RATIO ######################################

set title "Average Ratio x Number of Links"
#set output "images/ratioxn.eps"
set ylabel "Average Ratio"

plot	"data/fract-links-10000.txt" u 12:24 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:24 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:24 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:24 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:24 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:24 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:24 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:24 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:24 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:24 w linespoints notitle lt rgb "cyan"

###### ENUMT ######################################

set title "Enumeration Time x Number of Links"
#set output "images/enumtxn.eps"
set ylabel "Enumeration Time (s)"

plot	"data/fract-links-10000.txt" u 12:26 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:26 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:26 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:26 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:26 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:26 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:26 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:26 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:26 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:26 w linespoints notitle lt rgb "cyan"

###### LINPT ######################################

set title "Linear Program Solution Time x Number of Links"
#set output "images/linptxn.eps"
set ylabel "Linear Program Solution Time (s)"

plot	"data/fract-links-10000.txt" u 12:28 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:28 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:28 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:28 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:28 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:28 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:28 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:28 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:28 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:28 w linespoints notitle lt rgb "cyan"

###### INTPT ######################################

set title "Integer Program Solution Time x Number of Links"
#set output "images/intptxn.eps"

set ylabel "Integer Program Solution Time (s)"

plot	"data/fract-links-10000.txt" u 12:30 w linespoints notitle lt rgb "red", \
	"data/fract-links-9000.txt"  u 12:30 w linespoints notitle lt rgb "green", \
	"data/fract-links-8000.txt"  u 12:30 w linespoints notitle lt rgb "black", \
 	"data/fract-links-7000.txt"  u 12:30 w linespoints notitle lt rgb "blue", \
 	"data/fract-links-6000.txt"  u 12:30 w linespoints notitle lt rgb "yellow", \
 	"data/fract-links-5000.txt"  u 12:30 w linespoints notitle lt rgb "pink", \
 	"data/fract-links-4000.txt"  u 12:30 w linespoints notitle lt rgb "purple", \
 	"data/fract-links-3000.txt"  u 12:30 w linespoints notitle lt rgb "brown", \
 	"data/fract-links-2000.txt"  u 12:30 w linespoints notitle lt rgb "orange", \
 	"data/fract-links-1000.txt"  u 12:30 w linespoints notitle lt rgb "cyan"
