#! /usr/local/bin/gnuplot
set xlabel 'x'
set ylabel 'y'
set key below

#set size square
set xrange [*:*]
set yrange [*:*]

plot 'modele_7_no5//HYTEC_grid/domain.dat' u 1:2 title 'default boundary' w l lt 0 lw 3,\
 'modele_7_no5//HYTEC_grid/nodes0.dat' u 2:3 title 'zone granite' w p,\
 'modele_7_no5//HYTEC_grid/nodes1.dat' u 2:3 title 'zone residus' w p,\
 'modele_7_no5//HYTEC_grid/nodes2.dat' u 2:3 title 'zone steriles' w p,\
 'modele_7_no5//HYTEC_grid/mesh.dat' u 2:3 notitle w l lt 1 lw 1,\
 'modele_7_no5//HYTEC_grid/bound0.dat' u 2:3 title 'boundary left' w l lt 1 lw 4,\
 'modele_7_no5//HYTEC_grid/bound1.dat' u 2:3 title 'boundary right' w l lt 2 lw 4,\
 'modele_7_no5//HYTEC_grid/bound2.dat' u 2:3 title 'boundary top1' w l lt 3 lw 4,\
 'modele_7_no5//HYTEC_grid/bound3.dat' u 2:3 title 'boundary top3' w l lt 4 lw 4,\
 'modele_7_no5//HYTEC_grid/bound4.dat' u 2:3 title 'boundary top4' w l lt 5 lw 4,\
 'modele_7_no5//HYTEC_grid/bound5.dat' u 2:3 title 'boundary top5' w l lt 6 lw 4,\
 'modele_7_no5//HYTEC_grid/bound6.dat' u 2:3 title 'boundary top6' w l lt 7 lw 4,\
 'modele_7_no5//HYTEC_grid/bound7.dat' u 2:3 title 'boundary top7' w l lt 8 lw 4,\
 'modele_7_no5//HYTEC_grid/bound8.dat' u 2:3 title 'boundary top8' w l lt 9 lw 4,\
 'modele_7_no5//HYTEC_grid/bound9.dat' u 2:3 title 'boundary top9' w l lt 10 lw 4,\
 'modele_7_no5//HYTEC_grid/bound10.dat' u 2:3 title 'boundary top10' w l lt 11 lw 4,\
 'modele_7_no5//HYTEC_grid/bound11.dat' u 2:3 title 'boundary top11' w l lt 12 lw 4,\
 'modele_7_no5//HYTEC_grid/bound12.dat' u 2:3 title 'boundary top12' w l lt 13 lw 4,\
 'modele_7_no5//HYTEC_grid/bound13.dat' u 2:3 title 'boundary top13' w l lt 14 lw 4,\
 'modele_7_no5//HYTEC_grid/bound14.dat' u 2:3 title 'boundary top14' w l lt 15 lw 4

set term post color
set out 'modele_7_no5//HYTEC_grid/replot
set term x11
pause -1
