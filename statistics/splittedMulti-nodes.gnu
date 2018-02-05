#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Nodes"
set xrange [0:102]
set key top left
set output "images/splittedMulti-nodes.eps"

###### LINKS ######################################
set ylabel "Number of Links"

set title "Number of Links x Number of Nodes (10k)"

plot	"data/multi-nodes-10000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-10000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-10000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-10000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (9k)"

plot	"data/multi-nodes-9000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-9000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-9000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-9000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (8k)"

plot	"data/multi-nodes-8000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-8000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-8000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-8000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (7k)"

plot	"data/multi-nodes-7000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-7000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-7000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-7000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (6k)"

plot	"data/multi-nodes-6000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-6000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-6000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-6000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (5k)"

plot	"data/multi-nodes-5000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-5000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-5000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-5000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (4k)"

plot	"data/multi-nodes-4000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-4000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-4000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-4000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (3k)"

plot	"data/multi-nodes-3000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-3000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-3000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-3000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (2k)"

plot	"data/multi-nodes-2000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-2000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-2000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-2000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

set title "Number of Links x Number of Nodes (1k)"

plot	"data/multi-nodes-1000.txt"	u 4:12:13 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-1000.txt"	u 4:12 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-1000.txt"	u 4:12:13 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-1000.txt"	u 4:12 w linespoints notitle lt rgb "red", \

###### FSETS ######################################

set ylabel "Number of Feasible Sets"

set title "Number of Feasible Sets x Number of Nodes (10k)"

plot	"data/multi-nodes-10000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-10000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-10000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-10000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (9k)"

plot	"data/multi-nodes-9000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-9000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-9000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-9000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (8k)"

plot	"data/multi-nodes-8000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-8000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-8000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-8000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (7k)"

plot	"data/multi-nodes-7000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-7000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-7000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-7000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (6k)"

plot	"data/multi-nodes-6000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-6000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-6000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-6000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (5k)"

plot	"data/multi-nodes-5000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-5000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-5000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-5000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (4k)"

plot	"data/multi-nodes-4000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-4000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-4000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-4000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (3k)"

plot	"data/multi-nodes-3000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-3000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-3000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-3000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (2k)"

plot	"data/multi-nodes-2000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-2000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-2000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-2000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Nodes (1k)"

plot	"data/multi-nodes-1000.txt"	u 4:14:15 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-1000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-1000.txt"	u 4:14:15 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-1000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

###### RATIO ######################################

set ylabel "zLP/zIP"

set title "zLP/zIP x Number of Nodes (10k)"

plot	"data/multi-nodes-10000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-10000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-10000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-10000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (9k)"

plot	"data/multi-nodes-9000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-9000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-9000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-9000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (8k)"

plot	"data/multi-nodes-8000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-8000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-8000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-8000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (7k)"

plot	"data/multi-nodes-7000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-7000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-7000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-7000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (6k)"

plot	"data/multi-nodes-6000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-6000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-6000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-6000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (5k)"

plot	"data/multi-nodes-5000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-5000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-5000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-5000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (4k)"

plot	"data/multi-nodes-4000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-4000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-4000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-4000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (3k)"

plot	"data/multi-nodes-3000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-3000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-3000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-3000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (2k)"

plot	"data/multi-nodes-2000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-2000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-2000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-2000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Nodes (1k)"

plot	"data/multi-nodes-1000.txt"	u 4:24:25 w yerrorbars t "fractional coloring" lt rgb "green", \
	"data/multi-nodes-1000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notmulti-nodes-1000.txt"	u 4:24:25 w yerrorbars t "traditional coloring" lt rgb "red", \
	"data/notmulti-nodes-1000.txt"	u 4:24 w linespoints notitle lt rgb "red", \
