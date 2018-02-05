#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Links"
set xrange [0:102]
set key top left
set output "images/geral-links.eps"

###### FSETS ######################################

set title "Number of Feasible Sets x Number of Links"
#set output "images/fxn.eps"
set ylabel "Number of Feasible Sets"

plot	"data/geral-links-10000.txt" u 12:14 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:14 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:14 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:14 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:14 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:14 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:14 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:14 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:14 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:14 w linespoints notitle lt rgb "cyan"

set ylabel "Log10 of Number of Feasible Sets"

plot	"data/geral-links-10000.txt" u 12:(log10($14)) w linespoints t "10km" lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:(log10($14)) w linespoints t "9km" lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:(log10($14)) w linespoints t "8km" lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:(log10($14)) w linespoints t "7km" lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:(log10($14)) w linespoints t "6km" lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:(log10($14)) w linespoints t "5km" lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:(log10($14)) w linespoints t "4km" lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:(log10($14)) w linespoints t "3km" lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:(log10($14)) w linespoints t "2km" lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:(log10($14)) w linespoints t "1km" lt rgb "cyan"

###### FRACT ######################################

set title "Number of Fractional Solutions x Number of Links"
#set output "images/fractxn.eps"
set ylabel "Number of Fractional Solutions"

plot	"data/geral-links-10000.txt" u 12:16 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:16 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:16 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:16 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:16 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:16 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:16 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:16 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:16 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:16 w linespoints notitle lt rgb "cyan"

###### MULTI ######################################

set title "Multicolored Networks x Number of Links"
#set output "images/multixn.eps"
set ylabel "% of Multicolored Networks"

plot	"data/geral-links-10000.txt" u 12:18 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:18 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:18 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:18 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:18 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:18 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:18 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:18 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:18 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:18 w linespoints notitle lt rgb "cyan"

###### ZLP ######################################

set title "Average Linear Solution x Number of Links"
#set output "images/zlpxn.eps"
set ylabel "Average Linear Solution"

#### ZLP X LINKS
plot	"data/geral-links-10000.txt" u 12:20 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:20 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:20 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:20 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:20 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:20 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:20 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:20 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:20 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:20 w linespoints notitle lt rgb "cyan"

#### 1/ZLP X LINKS
plot	"data/geral-links-10000.txt" u 12:(1/$20) w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:(1/$20) w linespoints notitle lt rgb "cyan"

#### ZLP/LINKS X LINKS
plot	"data/geral-links-10000.txt" u 12:($20/$12) w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:($20/$12) w linespoints notitle lt rgb "cyan"

###### ZIP ######################################

set title "Average Integer Solution x Number of Links"
#set output "images/zipxn.eps"
set ylabel "Average Integer Solution"

plot	"data/geral-links-10000.txt" u 12:22 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:22 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:22 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:22 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:22 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:22 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:22 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:22 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:22 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:22 w linespoints notitle lt rgb "cyan"

#### 1/ZIP X LINKS
plot	"data/geral-links-10000.txt" u 12:(1/$22) w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:(1/$22) w linespoints notitle lt rgb "cyan"

#### ZIP/LINKS X LINKS
plot	"data/geral-links-10000.txt" u 12:($22/$12) w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:($22/$12) w linespoints notitle lt rgb "cyan"

###### RATIO ######################################

set title "Average Ratio x Number of Links"
#set output "images/ratioxn.eps"
set ylabel "Average Ratio"

plot	"data/geral-links-10000.txt" u 12:24 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:24 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:24 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:24 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:24 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:24 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:24 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:24 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:24 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:24 w linespoints notitle lt rgb "cyan"

###### ENUMT ######################################

set title "Enumeration Time x Number of Links"
#set output "images/enumtxn.eps"
set ylabel "Enumeration Time (s)"

plot	"data/geral-links-10000.txt" u 12:26 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:26 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:26 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:26 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:26 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:26 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:26 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:26 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:26 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:26 w linespoints notitle lt rgb "cyan"

###### LINPT ######################################

set title "Linear Program Solution Time x Number of Links"
#set output "images/linptxn.eps"
set ylabel "Linear Program Solution Time (s)"

plot	"data/geral-links-10000.txt" u 12:28 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:28 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:28 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:28 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:28 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:28 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:28 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:28 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:28 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:28 w linespoints notitle lt rgb "cyan"

###### INTPT ######################################

set title "Integer Program Solution Time x Number of Links"
#set output "images/intptxn.eps"

set ylabel "Integer Program Solution Time (s)"

plot	"data/geral-links-10000.txt" u 12:30 w linespoints notitle lt rgb "red", \
	"data/geral-links-9000.txt"  u 12:30 w linespoints notitle lt rgb "green", \
	"data/geral-links-8000.txt"  u 12:30 w linespoints notitle lt rgb "black", \
 	"data/geral-links-7000.txt"  u 12:30 w linespoints notitle lt rgb "blue", \
 	"data/geral-links-6000.txt"  u 12:30 w linespoints notitle lt rgb "yellow", \
 	"data/geral-links-5000.txt"  u 12:30 w linespoints notitle lt rgb "pink", \
 	"data/geral-links-4000.txt"  u 12:30 w linespoints notitle lt rgb "purple", \
 	"data/geral-links-3000.txt"  u 12:30 w linespoints notitle lt rgb "brown", \
 	"data/geral-links-2000.txt"  u 12:30 w linespoints notitle lt rgb "orange", \
 	"data/geral-links-1000.txt"  u 12:30 w linespoints notitle lt rgb "cyan"
