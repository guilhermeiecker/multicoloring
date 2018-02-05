#! /usr/bin/gnuplot

set term postscript eps enhanced color
set encoding utf8
set yrange [0:*]
set xlabel "Number of Links"
set xrange [0:102]
set key top left
set output "images/splittedFract-links.eps"

###### FSETS ######################################

set ylabel "Number of Feasible Sets"

set title "Number of Feasible Sets x Number of Links (10k)"

plot	"data/fract-links-10000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-10000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-10000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-10000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (9k)"

plot	"data/fract-links-9000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-9000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-9000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-9000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (8k)"

plot	"data/fract-links-8000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-8000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-8000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-8000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (7k)"

plot	"data/fract-links-7000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-7000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-7000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-7000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (6k)"

plot	"data/fract-links-6000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-6000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-6000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-6000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (5k)"

plot	"data/fract-links-5000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-5000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-5000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-5000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (4k)"

plot	"data/fract-links-4000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-4000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-4000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-4000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (3k)"

plot	"data/fract-links-3000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-3000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-3000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-3000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (2k)"

plot	"data/fract-links-2000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-2000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-2000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-2000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

set title "Number of Feasible Sets x Number of Links (1k)"

plot	"data/fract-links-1000.txt"	u 4:14:15 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-1000.txt"	u 4:14 w linespoints notitle lt rgb "green", \
	"data/notfract-links-1000.txt"	u 4:14:15 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-1000.txt"	u 4:14 w linespoints notitle lt rgb "red", \

###### RATIO ######################################

set ylabel "zLP/zIP"

set title "zLP/zIP x Number of Links (10k)"

plot	"data/fract-links-10000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-10000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-10000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-10000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (9k)"

plot	"data/fract-links-9000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-9000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-9000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-9000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (8k)"

plot	"data/fract-links-8000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-8000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-8000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-8000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (7k)"

plot	"data/fract-links-7000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-7000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-7000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-7000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (6k)"

plot	"data/fract-links-6000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-6000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-6000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-6000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (5k)"

plot	"data/fract-links-5000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-5000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-5000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-5000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (4k)"

plot	"data/fract-links-4000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-4000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-4000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-4000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (3k)"

plot	"data/fract-links-3000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-3000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-3000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-3000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (2k)"

plot	"data/fract-links-2000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-2000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-2000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-2000.txt"	u 4:24 w linespoints notitle lt rgb "red", \

set title "zLP/zIP x Number of Links (1k)"

plot	"data/fract-links-1000.txt"	u 4:24:25 w yerrorbars t "fractional solution" lt rgb "green", \
	"data/fract-links-1000.txt"	u 4:24 w linespoints notitle lt rgb "green", \
	"data/notfract-links-1000.txt"	u 4:24:25 w yerrorbars t "integer solution" lt rgb "red", \
	"data/notfract-links-1000.txt"	u 4:24 w linespoints notitle lt rgb "red", \
