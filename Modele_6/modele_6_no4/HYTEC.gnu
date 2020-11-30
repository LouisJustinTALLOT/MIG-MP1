#! /usr/local/bin/gnuplot
set xlabel 'x'
set ylabel 'y'
set key below

#set size square
set xrange [*:*]
set yrange [*:*]

plot 'modele_6_no4//HYTEC_grid/domain.dat' u 1:2 title 'default boundary' w l lt 0 lw 3,\
 'modele_6_no4//HYTEC_grid/nodes0.dat' u 2:3 title 'zone domain' w p,\
 'modele_6_no4//HYTEC_grid/nodes1.dat' u 2:3 title 'zone air' w p,\
 'modele_6_no4//HYTEC_grid/nodes2.dat' u 2:3 title 'zone granite' w p,\
 'modele_6_no4//HYTEC_grid/nodes3.dat' u 2:3 title 'zone residus' w p,\
 'modele_6_no4//HYTEC_grid/nodes4.dat' u 2:3 title 'zone steriles' w p,\
 'modele_6_no4//HYTEC_grid/mesh.dat' u 2:3 notitle w l lt 1 lw 1,\
 'modele_6_no4//HYTEC_grid/bound0.dat' u 2:3 title 'boundary top' w l lt 1 lw 4

set term post color
set out 'modele_6_no4//HYTEC_grid/replot
set term x11
pause -1
