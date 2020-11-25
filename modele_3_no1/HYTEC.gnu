#! /usr/local/bin/gnuplot
set xlabel 'x'
set ylabel 'y'
set key below

#set size square
set xrange [*:*]
set yrange [*:*]

plot 'modele_3_no1//HYTEC_grid/domain.dat' u 1:2 title 'default boundary' w l lt 0 lw 3,\
 'modele_3_no1//HYTEC_grid/nodes0.dat' u 2:3 title 'zone sand' w p,\
 'modele_3_no1//HYTEC_grid/mesh.dat' u 2:3 notitle w l lt 1 lw 1,\
 'modele_3_no1//HYTEC_grid/bound0.dat' u 2:3 title 'boundary left' w l lt 1 lw 4,\
 'modele_3_no1//HYTEC_grid/bound1.dat' u 2:3 title 'boundary right' w l lt 2 lw 4

set term post color
set out 'modele_3_no1//HYTEC_grid/replot
set term x11
pause -1
