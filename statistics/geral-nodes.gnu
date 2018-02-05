#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Nodes"
set xrange [0:102]
set key top left
set output "images/geral-nodes.eps"

###### LINKS ######################################

set title "Number of Links x Number of Nodes"
#set output "images/linksxn.eps"
set ylabel "Number of Links"

plot	"data/geral-nodes-10000.txt" u 4:12:13 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:12 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:12:13 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:12 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:12:13 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:12 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:12:13 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:12 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:12:13 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:12 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:12:13 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:12 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:12:13 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:12 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:12:13 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:12 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:12:13 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:12 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:12:13 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:12 w linespoints notitle lt rgb "cyan"

###### FSETS ######################################

set title "Number of Feasible Sets x Number of Nodes"
#set output "images/fxn.eps"
set ylabel "Number of Feasible Sets"

plot	"data/geral-nodes-10000.txt" u 4:14:15 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:14 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:14:15 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:14 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:14:15 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:14 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:14:15 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:14 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:14:15 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:14 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:14:15 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:14 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:14:15 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:14 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:14:15 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:14 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:14:15 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:14 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:14:15 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:14 w linespoints notitle lt rgb "cyan"

set ylabel "Log10 of Number of Feasible Sets"

plot	"data/geral-nodes-10000.txt" u 4:(log10($14)) w linespoints t "10km" lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:(log10($14)) w linespoints t "9km" lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:(log10($14)) w linespoints t "8km" lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:(log10($14)) w linespoints t "7km" lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:(log10($14)) w linespoints t "6km" lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:(log10($14)) w linespoints t "5km" lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:(log10($14)) w linespoints t "4km" lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:(log10($14)) w linespoints t "3km" lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:(log10($14)) w linespoints t "2km" lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:(log10($14)) w linespoints t "1km" lt rgb "cyan"

###### FRACT ######################################

set title "Number of Fractional Solutions x Number of Nodes"
#set output "images/fractxn.eps"
set ylabel "Number of Fractional Solutions"

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

###### MULTI ######################################

set title "Multicolored Networks x Number of Nodes"
#set output "images/multixn.eps"
set ylabel "% of Multicolored Networks"

plot	"data/geral-nodes-10000.txt" u 4:18:19 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:18 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:18:19 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:18 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:18:19 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:18 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:18:19 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:18 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:18:19 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:18 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:18:19 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:18 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:18:19 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:18 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:18:19 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:18 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:18:19 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:18 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:18:19 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:18 w linespoints notitle lt rgb "cyan"

###### ZLP ######################################

set title "Average Linear Solution x Number of Nodes"
#set output "images/zlpxn.eps"
set ylabel "Average Linear Solution"

#### ZLP X NODES
plot	"data/geral-nodes-10000.txt" u 4:20:21 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:20 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:20:21 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:20 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:20:21 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:20 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:20:21 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:20 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:20:21 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:20 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:20:21 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:20 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:20:21 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:20 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:20:21 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:20 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:20:21 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:20 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:20:21 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:20 w linespoints notitle lt rgb "cyan"

#### 1/ZLP X NODES
plot	"data/geral-nodes-10000.txt" u 4:(1/$20) w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:(1/$20) w linespoints notitle lt rgb "cyan"

#### ZLP/NODES X NODES
plot	"data/geral-nodes-10000.txt" u 4:($20/$4) w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:($20/$4) w linespoints notitle lt rgb "cyan"

###### ZIP ######################################

set title "Average Integer Solution x Number of Nodes"
#set output "images/zipxn.eps"
set ylabel "Average Integer Solution"

plot	"data/geral-nodes-10000.txt" u 4:22:23 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:22 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:22:23 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:22 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:22:23 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:22 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:22:23 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:22 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:22:23 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:22 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:22:23 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:22 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:22:23 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:22 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:22:23 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:22 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:22:23 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:22 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:22:23 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:22 w linespoints notitle lt rgb "cyan"

#### 1/ZIP X NODES
plot	"data/geral-nodes-10000.txt" u 4:(1/$22) w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:(1/$22) w linespoints notitle lt rgb "cyan"

#### ZIP/NODES X NODES
plot	"data/geral-nodes-10000.txt" u 4:($22/$4) w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "black", \
 	"data/geral-nodes-7000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "blue", \
 	"data/geral-nodes-6000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "yellow", \
 	"data/geral-nodes-5000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "pink", \
 	"data/geral-nodes-4000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "purple", \
 	"data/geral-nodes-3000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "brown", \
 	"data/geral-nodes-2000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "orange", \
 	"data/geral-nodes-1000.txt"  u 4:($22/$4) w linespoints notitle lt rgb "cyan"

###### RATIO ######################################

set title "Average Ratio x Number of Nodes"
#set output "images/ratioxn.eps"
set ylabel "Average Ratio"

plot	"data/geral-nodes-10000.txt" u 4:24:25 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:24 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:24:25 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:24 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:24:25 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:24 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:24:25 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:24 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:24:25 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:24 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:24:25 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:24 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:24:25 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:24 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:24:25 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:24 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:24:25 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:24 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:24:25 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:24 w linespoints notitle lt rgb "cyan"

###### ENUMT ######################################

set title "Enumeration Time x Number of Nodes"
#set output "images/enumtxn.eps"
set ylabel "Enumeration Time (s)"

plot	"data/geral-nodes-10000.txt" u 4:26:27 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:26 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:26:27 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:26 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:26:27 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:26 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:26:27 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:26 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:26:27 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:26 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:26:27 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:26 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:26:27 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:26 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:26:27 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:26 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:26:27 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:26 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:26:27 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:26 w linespoints notitle lt rgb "cyan"

###### LINPT ######################################

set title "Linear Program Solution Time x Number of Nodes"
#set output "images/linptxn.eps"
set ylabel "Linear Program Solution Time (s)"

plot	"data/geral-nodes-10000.txt" u 4:28:29 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:28 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:28:29 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:28 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:28:29 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:28 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:28:29 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:28 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:28:29 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:28 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:28:29 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:28 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:28:29 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:28 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:28:29 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:28 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:28:29 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:28 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:28:29 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:28 w linespoints notitle lt rgb "cyan"


###### INTPT ######################################

set title "Integer Program Solution Time x Number of Nodes"
#set output "images/intptxn.eps"

set ylabel "Integer Program Solution Time (s)"

plot	"data/geral-nodes-10000.txt" u 4:30:31 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-nodes-10000.txt" u 4:30 w linespoints notitle lt rgb "red", \
	"data/geral-nodes-9000.txt"  u 4:30:31 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-nodes-9000.txt"  u 4:30 w linespoints notitle lt rgb "green", \
	"data/geral-nodes-8000.txt"  u 4:30:31 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-nodes-8000.txt"  u 4:30 w linespoints notitle lt rgb "black", \
	"data/geral-nodes-7000.txt"  u 4:30:31 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-nodes-7000.txt"  u 4:30 w linespoints notitle lt rgb "blue", \
	"data/geral-nodes-6000.txt"  u 4:30:31 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-nodes-6000.txt"  u 4:30 w linespoints notitle lt rgb "yellow", \
	"data/geral-nodes-5000.txt"  u 4:30:31 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-nodes-5000.txt"  u 4:30 w linespoints notitle lt rgb "pink", \
	"data/geral-nodes-4000.txt"  u 4:30:31 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-nodes-4000.txt"  u 4:30 w linespoints notitle lt rgb "purple", \
	"data/geral-nodes-3000.txt"  u 4:30:31 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-nodes-3000.txt"  u 4:30 w linespoints notitle lt rgb "brown", \
	"data/geral-nodes-2000.txt"  u 4:30:31 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-nodes-2000.txt"  u 4:30 w linespoints notitle lt rgb "orange", \
	"data/geral-nodes-1000.txt"  u 4:30:31 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-nodes-1000.txt"  u 4:30 w linespoints notitle lt rgb "cyan"
