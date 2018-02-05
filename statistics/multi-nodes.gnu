#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Nodes"
set xrange [0:102]
set key top left
set output "images/multi-nodes.eps"

###### LINKS ######################################

set title "Number of Links x Number of Nodes"
#set output "images/linksxn.eps"
set ylabel "Number of Links"

plot	"data/multi-nodes-10000.txt" u 4:12:13 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:12 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:12:13 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:12 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:12:13 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:12 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:12:13 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:12 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:12:13 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:12 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:12:13 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:12 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:12:13 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:12 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:12:13 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:12 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:12:13 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:12 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:12:13 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:12 w linespoints notitle lt rgb "cyan"

###### FSETS ######################################

set title "Number of Feasible Sets x Number of Nodes"
#set output "images/fxn.eps"
set ylabel "Number of Feasible Sets"

plot	"data/multi-nodes-10000.txt" u 4:14:15 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:14 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:14:15 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:14 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:14:15 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:14 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:14:15 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:14 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:14:15 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:14 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:14:15 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:14 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:14:15 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:14 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:14:15 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:14 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:14:15 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:14 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:14:15 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:14 w linespoints notitle lt rgb "cyan"

set ylabel "Log10 of Number of Feasible Sets"

plot	"data/multi-nodes-10000.txt" u 4:(log10($14)) w linespoints t "10km" lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:(log10($14)) w linespoints t "9km" lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:(log10($14)) w linespoints t "8km" lt rgb "black", \
 	"data/multi-nodes-7000.txt"  u 4:(log10($14)) w linespoints t "7km" lt rgb "blue", \
 	"data/multi-nodes-6000.txt"  u 4:(log10($14)) w linespoints t "6km" lt rgb "yellow", \
 	"data/multi-nodes-5000.txt"  u 4:(log10($14)) w linespoints t "5km" lt rgb "pink", \
 	"data/multi-nodes-4000.txt"  u 4:(log10($14)) w linespoints t "4km" lt rgb "purple", \
 	"data/multi-nodes-3000.txt"  u 4:(log10($14)) w linespoints t "3km" lt rgb "brown", \
 	"data/multi-nodes-2000.txt"  u 4:(log10($14)) w linespoints t "2km" lt rgb "orange", \
 	"data/multi-nodes-1000.txt"  u 4:(log10($14)) w linespoints t "1km" lt rgb "cyan"

###### ZLP ######################################

set title "Average Linear Solution x Number of Nodes"
#set output "images/zlpxn.eps"
set ylabel "Average Linear Solution"

plot	"data/multi-nodes-10000.txt" u 4:20:21 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:20 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:20:21 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:20 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:20:21 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:20 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:20:21 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:20 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:20:21 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:20 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:20:21 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:20 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:20:21 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:20 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:20:21 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:20 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:20:21 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:20 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:20:21 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:20 w linespoints notitle lt rgb "cyan"

#### 1/ZLP X NODES
plot	"data/multi-nodes-10000.txt" u 4:(1/$20) w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "black", \
 	"data/multi-nodes-7000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "blue", \
 	"data/multi-nodes-6000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "yellow", \
 	"data/multi-nodes-5000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "pink", \
 	"data/multi-nodes-4000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "purple", \
 	"data/multi-nodes-3000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "brown", \
 	"data/multi-nodes-2000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "orange", \
 	"data/multi-nodes-1000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "cyan"

#### ZLP/NODES X NODES
plot	"data/multi-nodes-10000.txt" u 4:($20/$4) w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "black", \
 	"data/multi-nodes-7000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "blue", \
 	"data/multi-nodes-6000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "yellow", \
 	"data/multi-nodes-5000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "pink", \
 	"data/multi-nodes-4000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "purple", \
 	"data/multi-nodes-3000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "brown", \
 	"data/multi-nodes-2000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "orange", \
 	"data/multi-nodes-1000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "cyan"

###### ZIP ######################################

set title "Average Integer Solution x Number of Nodes"
#set output "images/zipxn.eps"
set ylabel "Average Integer Solution"

plot	"data/multi-nodes-10000.txt" u 4:22:23 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:22 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:22:23 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:22 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:22:23 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:22 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:22:23 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:22 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:22:23 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:22 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:22:23 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:22 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:22:23 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:22 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:22:23 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:22 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:22:23 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:22 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:22:23 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:22 w linespoints notitle lt rgb "cyan"

###### RATIO ######################################

set title "Average Ratio x Number of Nodes"
#set output "images/ratioxn.eps"
set ylabel "Average Ratio"
set yrange [*:*]

plot	"data/multi-nodes-10000.txt" u 4:(1/$24):25 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:(1/$24) w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:(1/$24):25 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:(1/$24):25 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:(1/$24):25 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:(1/$24):25 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:(1/$24):25 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:(1/$24):25 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:(1/$24):25 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:(1/$24):25 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:(1/$24):25 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:(1/$24) w linespoints notitle lt rgb "cyan"

###### ENUMT ######################################

set title "Enumeration Time x Number of Nodes"
#set output "images/enumtxn.eps"
set ylabel "Enumeration Time (s)"
set yrange [0:*]

plot	"data/multi-nodes-10000.txt" u 4:26:27 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:26 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:26:27 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:26 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:26:27 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:26 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:26:27 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:26 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:26:27 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:26 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:26:27 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:26 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:26:27 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:26 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:26:27 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:26 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:26:27 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:26 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:26:27 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:26 w linespoints notitle lt rgb "cyan"

###### LINPT ######################################

set title "Linear Program Solution Time x Number of Nodes"
#set output "images/linptxn.eps"
set ylabel "Linear Program Solution Time (s)"

plot	"data/multi-nodes-10000.txt" u 4:28:29 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:28 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:28:29 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:28 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:28:29 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:28 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:28:29 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:28 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:28:29 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:28 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:28:29 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:28 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:28:29 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:28 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:28:29 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:28 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:28:29 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:28 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:28:29 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:28 w linespoints notitle lt rgb "cyan"


###### INTPT ######################################

set title "Integer Program Solution Time x Number of Nodes"
#set output "images/intptxn.eps"

set ylabel "Integer Program Solution Time (s)"

plot	"data/multi-nodes-10000.txt" u 4:30:31 w yerrorbars t "10km" lt rgb "red", \
	"data/multi-nodes-10000.txt" u 4:30 w linespoints notitle lt rgb "red", \
	"data/multi-nodes-9000.txt"  u 4:30:31 w yerrorbars t "9km" lt rgb "green", \
	"data/multi-nodes-9000.txt"  u 4:30 w linespoints notitle lt rgb "green", \
	"data/multi-nodes-8000.txt"  u 4:30:31 w yerrorbars t "8km" lt rgb "black", \
	"data/multi-nodes-8000.txt"  u 4:30 w linespoints notitle lt rgb "black", \
	"data/multi-nodes-7000.txt"  u 4:30:31 w yerrorbars t "7km" lt rgb "blue", \
 	"data/multi-nodes-7000.txt"  u 4:30 w linespoints notitle lt rgb "blue", \
	"data/multi-nodes-6000.txt"  u 4:30:31 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/multi-nodes-6000.txt"  u 4:30 w linespoints notitle lt rgb "yellow", \
	"data/multi-nodes-5000.txt"  u 4:30:31 w yerrorbars t "5km" lt rgb "pink", \
 	"data/multi-nodes-5000.txt"  u 4:30 w linespoints notitle lt rgb "pink", \
	"data/multi-nodes-4000.txt"  u 4:30:31 w yerrorbars t "4km" lt rgb "purple", \
 	"data/multi-nodes-4000.txt"  u 4:30 w linespoints notitle lt rgb "purple", \
	"data/multi-nodes-3000.txt"  u 4:30:31 w yerrorbars t "3km" lt rgb "brown", \
 	"data/multi-nodes-3000.txt"  u 4:30 w linespoints notitle lt rgb "brown", \
	"data/multi-nodes-2000.txt"  u 4:30:31 w yerrorbars t "2km" lt rgb "orange", \
 	"data/multi-nodes-2000.txt"  u 4:30 w linespoints notitle lt rgb "orange", \
	"data/multi-nodes-1000.txt"  u 4:30:31 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/multi-nodes-1000.txt"  u 4:30 w linespoints notitle lt rgb "cyan"
