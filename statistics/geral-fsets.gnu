#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Feasibe Sets"
set xrange [0:*]
set key top left
set output "images/geral-fsets.eps"

###### FRACT ######################################

set title "Number of Fractional Solutions x Number of Feasibe Sets"
#set output "images/fractxn.eps"
set ylabel "Number of Fractional Solutions"

plot	"data/geral-fsets-10000.txt" u 14:16:17 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:16 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:16:17 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:16 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:16:17 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:16 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:16:17 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:16 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:16:17 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:16 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:16:17 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:16 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:16:17 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:16 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:16:17 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:16 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:16:17 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:16 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:16:17 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:16 w linespoints notitle lt rgb "cyan"

###### MULTI ######################################

set title "Multicolored Networks x Number of Feasibe Sets"
#set output "images/multixn.eps"
set ylabel "% of Multicolored Networks"

plot	"data/geral-fsets-10000.txt" u 14:18:19 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:18 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:18:19 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:18 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:18:19 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:18 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:18:19 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:18 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:18:19 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:18 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:18:19 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:18 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:18:19 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:18 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:18:19 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:18 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:18:19 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:18 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:18:19 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:18 w linespoints notitle lt rgb "cyan"

###### ZLP ######################################

set title "Average Linear Solution x Number of Feasibe Sets"
#set output "images/zlpxn.eps"
set ylabel "Average Linear Solution"

#### ZLP X NODES
plot	"data/geral-fsets-10000.txt" u 14:20:21 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:20 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:20:21 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:20 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:20:21 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:20 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:20:21 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:20 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:20:21 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:20 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:20:21 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:20 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:20:21 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:20 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:20:21 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:20 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:20:21 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:20 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:20:21 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:20 w linespoints notitle lt rgb "cyan"

#### 1/ZLP X NODES
plot	"data/geral-fsets-10000.txt" u 14:(1/$20) w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "black", \
 	"data/geral-fsets-7000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "blue", \
 	"data/geral-fsets-6000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "yellow", \
 	"data/geral-fsets-5000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "pink", \
 	"data/geral-fsets-4000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "purple", \
 	"data/geral-fsets-3000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "brown", \
 	"data/geral-fsets-2000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "orange", \
 	"data/geral-fsets-1000.txt"  u 14:(1/$20) w linespoints notitle lt rgb "cyan"

###### ZIP ######################################

set title "Average Integer Solution x Number of Feasibe Sets"
#set output "images/zipxn.eps"
set ylabel "Average Integer Solution"

plot	"data/geral-fsets-10000.txt" u 14:22:23 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:22 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:22:23 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:22 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:22:23 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:22 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:22:23 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:22 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:22:23 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:22 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:22:23 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:22 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:22:23 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:22 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:22:23 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:22 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:22:23 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:22 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:22:23 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:22 w linespoints notitle lt rgb "cyan"

#### 1/ZIP X NODES
plot	"data/geral-fsets-10000.txt" u 14:(1/$22) w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "black", \
 	"data/geral-fsets-7000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "blue", \
 	"data/geral-fsets-6000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "yellow", \
 	"data/geral-fsets-5000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "pink", \
 	"data/geral-fsets-4000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "purple", \
 	"data/geral-fsets-3000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "brown", \
 	"data/geral-fsets-2000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "orange", \
 	"data/geral-fsets-1000.txt"  u 14:(1/$22) w linespoints notitle lt rgb "cyan"

###### RATIO ######################################

set title "Average Ratio x Number of Feasibe Sets"
#set output "images/ratioxn.eps"
set ylabel "Average Ratio"

plot	"data/geral-fsets-10000.txt" u 14:24:25 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:24 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:24:25 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:24 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:24:25 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:24 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:24:25 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:24 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:24:25 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:24 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:24:25 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:24 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:24:25 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:24 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:24:25 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:24 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:24:25 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:24 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:24:25 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:24 w linespoints notitle lt rgb "cyan"

###### ENUMT ######################################

set title "Enumeration Time x Number of Feasibe Sets"
#set output "images/enumtxn.eps"
set ylabel "Enumeration Time (s)"

plot	"data/geral-fsets-10000.txt" u 14:26:27 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:26 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:26:27 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:26 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:26:27 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:26 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:26:27 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:26 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:26:27 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:26 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:26:27 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:26 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:26:27 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:26 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:26:27 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:26 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:26:27 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:26 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:26:27 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:26 w linespoints notitle lt rgb "cyan"

###### LINPT ######################################

set title "Linear Program Solution Time x Number of Feasibe Sets"
#set output "images/linptxn.eps"
set ylabel "Linear Program Solution Time (s)"

plot	"data/geral-fsets-10000.txt" u 14:28:29 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:28 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:28:29 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:28 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:28:29 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:28 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:28:29 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:28 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:28:29 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:28 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:28:29 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:28 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:28:29 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:28 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:28:29 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:28 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:28:29 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:28 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:28:29 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:28 w linespoints notitle lt rgb "cyan"


###### INTPT ######################################

set title "Integer Program Solution Time x Number of Feasibe Sets"
#set output "images/intptxn.eps"

set ylabel "Integer Program Solution Time (s)"

plot	"data/geral-fsets-10000.txt" u 14:30:31 w yerrorbars t "10km" lt rgb "red", \
	"data/geral-fsets-10000.txt" u 14:30 w linespoints notitle lt rgb "red", \
	"data/geral-fsets-9000.txt"  u 14:30:31 w yerrorbars t "9km" lt rgb "green", \
	"data/geral-fsets-9000.txt"  u 14:30 w linespoints notitle lt rgb "green", \
	"data/geral-fsets-8000.txt"  u 14:30:31 w yerrorbars t "8km" lt rgb "black", \
	"data/geral-fsets-8000.txt"  u 14:30 w linespoints notitle lt rgb "black", \
	"data/geral-fsets-7000.txt"  u 14:30:31 w yerrorbars t "7km" lt rgb "blue", \
 	"data/geral-fsets-7000.txt"  u 14:30 w linespoints notitle lt rgb "blue", \
	"data/geral-fsets-6000.txt"  u 14:30:31 w yerrorbars t "6km" lt rgb "yellow", \
 	"data/geral-fsets-6000.txt"  u 14:30 w linespoints notitle lt rgb "yellow", \
	"data/geral-fsets-5000.txt"  u 14:30:31 w yerrorbars t "5km" lt rgb "pink", \
 	"data/geral-fsets-5000.txt"  u 14:30 w linespoints notitle lt rgb "pink", \
	"data/geral-fsets-4000.txt"  u 14:30:31 w yerrorbars t "4km" lt rgb "purple", \
 	"data/geral-fsets-4000.txt"  u 14:30 w linespoints notitle lt rgb "purple", \
	"data/geral-fsets-3000.txt"  u 14:30:31 w yerrorbars t "3km" lt rgb "brown", \
 	"data/geral-fsets-3000.txt"  u 14:30 w linespoints notitle lt rgb "brown", \
	"data/geral-fsets-2000.txt"  u 14:30:31 w yerrorbars t "2km" lt rgb "orange", \
 	"data/geral-fsets-2000.txt"  u 14:30 w linespoints notitle lt rgb "orange", \
	"data/geral-fsets-1000.txt"  u 14:30:31 w yerrorbars t "1km" lt rgb "cyan", \
 	"data/geral-fsets-1000.txt"  u 14:30 w linespoints notitle lt rgb "cyan"
