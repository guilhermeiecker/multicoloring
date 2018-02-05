#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Nodes"
set xrange [0:102]
set key top left
set output "images/splittedFract-nodes.eps"

###### LINKS ######################################
set ylabel "Number of Links"

set title "Number of Links x Number of Nodes (10k)"

plot	"data/fract-nodes-10000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-10000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-10000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-10000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (9k)"

plot	"data/fract-nodes-9000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-9000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-9000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-9000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (8k)"

plot	"data/fract-nodes-8000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-8000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-8000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-8000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (7k)"

plot	"data/fract-nodes-7000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-7000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-7000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-7000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (6k)"

plot	"data/fract-nodes-6000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-6000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-6000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-6000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (5k)"

plot	"data/fract-nodes-5000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-5000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-5000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-5000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (4k)"

plot	"data/fract-nodes-4000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-4000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-4000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-4000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (3k)"

plot	"data/fract-nodes-3000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-3000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-3000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-3000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (2k)"

plot	"data/fract-nodes-2000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-2000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-2000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-2000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (1k)"

plot	"data/fract-nodes-1000.txt"	u 4:12:13 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-1000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-1000.txt"	u 4:12:13 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-1000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

###### FSETS ######################################

set ylabel "Number of Feasible Sets"

set title "Number of Feasible Sets x Number of Nodes (10k)"

plot	"data/fract-nodes-10000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-10000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-10000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-10000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (9k)"

plot	"data/fract-nodes-9000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-9000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-9000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-9000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (8k)"

plot	"data/fract-nodes-8000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-8000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-8000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-8000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (7k)"

plot	"data/fract-nodes-7000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-7000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-7000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-7000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (6k)"

plot	"data/fract-nodes-6000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-6000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-6000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-6000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (5k)"

plot	"data/fract-nodes-5000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-5000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-5000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-5000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (4k)"

plot	"data/fract-nodes-4000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-4000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-4000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-4000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (3k)"

plot	"data/fract-nodes-3000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-3000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-3000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-3000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (2k)"

plot	"data/fract-nodes-2000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-2000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-2000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-2000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (1k)"

plot	"data/fract-nodes-1000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-1000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-1000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-1000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

###### RATIO ######################################

set ylabel "zLP/zIP"

set title "zLP/zIP x Number of Nodes (10k)"

plot	"data/fract-nodes-10000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-10000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-10000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-10000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (9k)"

plot	"data/fract-nodes-9000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-9000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-9000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-9000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (8k)"

plot	"data/fract-nodes-8000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-8000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-8000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-8000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (7k)"

plot	"data/fract-nodes-7000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-7000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-7000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-7000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (6k)"

plot	"data/fract-nodes-6000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-6000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-6000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-6000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (5k)"

plot	"data/fract-nodes-5000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-5000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-5000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-5000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (4k)"

plot	"data/fract-nodes-4000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-4000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-4000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-4000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (3k)"

plot	"data/fract-nodes-3000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-3000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-3000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-3000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (2k)"

plot	"data/fract-nodes-2000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-2000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-2000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-2000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (1k)"

plot	"data/fract-nodes-1000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-nodes-1000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-nodes-1000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-nodes-1000.txt"	u 4:24 w linespoints notitle lt rgb "red", \
