#! /usr/bin/gnuplot

set term post color eps
set encoding utf8
#set size 0.6,0.6
#set tmargin 2



set title "Posicao BS x USUs - C8"
set yrange [0:600]
set ylabel "distancia (m)"
set xlabel "distancia (m)"
set xrange [0:600]
#set xtics (0.1,0.5,1.0,1.5,2.0)
#set key bottom right
#set key top right
set key at 620,590
set size square
#set same_xy

#set arrow from 3,0 to 3,f(3) nohead
set arrow from 300,300 to 300,600 nohead
set arrow from 300,300 to 559.8,150 nohead
set arrow from 300,300 to 40.2,150 nohead


#set arrow from 0,f(3) to 3,f(3) nohead


set parametric
set trange [0:2*pi]
#unset autoescale
# Parametric functions for a circle
r = 300
fx(t) = r*cos(t) + 300
fy(t) = r*sin(t) + 300
#plot fx(t),fy(t)


set output "posicionamento-50-15-c8.eps"
plot "posicoes-USUs-50-8" lt 4 pt 4 lc rgb "black" t "USUs", \
     "posicoes-BSs-15-8" lt 5 pt 5 lc rgb "dark-blue" t "BSs off", \
     "posicoes-BSs-ativas-8" pt 5 lc rgb "red" t "   on", \
     fx(t),fy(t) linetype -1 notitle, \
     "cenario-associacao-8" w lines linetype 0 notitle

set title "Posicao BS x USUs - C12"
set output "posicionamento-50-15-c12.eps"
plot "posicoes-USUs-50-12" lt 4 pt 4 lc rgb "black" t "USUs", \
     "posicoes-BSs-15-12" lt 5 pt 5 lc rgb "dark-blue" t "BSs off", \
     "posicoes-BSs-ativas-12" pt 5 lc rgb "red" t "   on", \
     fx(t),fy(t) linetype -1 notitle, \
     "cenario-associacao-12" w lines linetype 0 notitle


set title "Posicao BS x USUs - C16"
set output "posicionamento-50-15-c16.eps"
plot "posicoes-USUs-50-16" lt 4 pt 4 lc rgb "black" t "USUs", \
     "posicoes-BSs-15-16" lt 5 pt 5 lc rgb "dark-blue" t "BSs off", \
     "posicoes-BSs-ativas-16" pt 5 lc rgb "red" t "   on", \
     fx(t),fy(t) linetype -1 notitle, \
     "cenario-associacao-16" w lines linetype 0 notitle


set title "Posicao BS x USUs - C18"
set output "posicionamento-50-15-c18.eps"
plot "posicoes-USUs-50-18" lt 4 pt 4 lc rgb "black" t "USUs", \
     "posicoes-BSs-15-18" lt 5 pt 5 lc rgb "dark-blue" t "BSs off", \
     "posicoes-BSs-ativas-18" pt 5 lc rgb "red" t "   on", \
     fx(t),fy(t) linetype -1 notitle, \
     "cenario-associacao-18" w lines linetype 0 notitle


set title "Posicao BS x USUs - C27"
set output "posicionamento-50-15-c27.eps"
plot "posicoes-USUs-50-27" lt 4 pt 4 lc rgb "black" t "USUs", \
     "posicoes-BSs-15-27" lt 5 pt 5 lc rgb "dark-blue" t "BSs off", \
     "posicoes-BSs-ativas-27" pt 5 lc rgb "red" t "   on", \
     fx(t),fy(t) linetype -1 notitle, \
     "cenario-associacao-27" w lines linetype 0 notitle

exit

set output "posicionamento-50-15-c3.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-3" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-3" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c4.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-4" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-4" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c5.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-5" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-5" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c6.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-6" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-6" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c7.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-7" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-7" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c8.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-8" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-8" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c9.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-9" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-9" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c10.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-10" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-10" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c11.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-11" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-11" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c12.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-12" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-12" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c13.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-13" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-13" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c14.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-14" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-14" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c15.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-15" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-15" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c16.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-16" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-16" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c17.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-17" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-17" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c18.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-18" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-18" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c19.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-19" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-19" lt 4 t "USUs", \
     fx(t),fy(t) notitle


set output "posicionamento-50-15-c20.eps"
plot "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-BSs-15-20" lt 5 t "BSs", \
     "/storage/raphael/brkga-23-11-17/posicionamento/posicoes/posicoes-USUs-50-20" lt 4 t "USUs", \
     fx(t),fy(t) notitle
