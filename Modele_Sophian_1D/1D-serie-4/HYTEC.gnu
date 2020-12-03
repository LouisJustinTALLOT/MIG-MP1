#! /usr/local/bin/gnuplot
set xlabel 'x'
set ylabel 'y'
set key below

#set size square
set xrange [*:*]
set yrange [*:*]

plot '1D-serie-4//HYTEC_grid/domain.dat' u 1:2 title 'default boundary' w l lt 0 lw 3,\
 '1D-serie-4//HYTEC_grid/nodes0.dat' u 2:3 title 'zone 1' w p,\
 '1D-serie-4//HYTEC_grid/nodes1.dat' u 2:3 title 'zone 2' w p,\
 '1D-serie-4//HYTEC_grid/mesh.dat' u 2:3 notitle w l lt 1 lw 1,\
 '1D-serie-4//HYTEC_grid/bound0.dat' u 2:3 title 'boundary left' w l lt 1 lw 4,\
 '1D-serie-4//HYTEC_grid/bound1.dat' u 2:3 title 'boundary right' w l lt 2 lw 4

set term post color
set out '1D-serie-4//HYTEC_grid/replot
set term x11
pause -1
