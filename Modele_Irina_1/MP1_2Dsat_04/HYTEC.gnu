#! /usr/local/bin/gnuplot
set xlabel 'x'
set ylabel 'y'
set key below

#set size square
set xrange [*:*]
set yrange [*:*]

plot '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/domain.dat' u 1:2 title 'default boundary' w l lt 0 lw 3,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/nodes0.dat' u 2:3 title 'zone sol' w p,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/nodes1.dat' u 2:3 title 'zone granite' w p,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/nodes2.dat' u 2:3 title 'zone MCO' w p,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/mesh.dat' u 2:3 notitle w l lt 1 lw 1,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/bound0.dat' u 2:3 title 'boundary riv_verraux' w l lt 1 lw 4,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/bound1.dat' u 2:3 title 'boundary left' w l lt 2 lw 4,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/bound2.dat' u 2:3 title 'boundary surface_1' w l lt 3 lw 4,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/bound3.dat' u 2:3 title 'boundary surface_2' w l lt 4 lw 4,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/bound4.dat' u 2:3 title 'boundary surface_3' w l lt 5 lw 4,\
 '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/bound5.dat' u 2:3 title 'boundary surface_4' w l lt 6 lw 4

set term post color
set out '/home/ltallot/Modele_sat_2D_04/MP1_2Dsat_04//HYTEC_grid/replot
set term x11
pause -1
