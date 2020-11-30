plot "r3m_nodes.dat" u 2:3 w p ps 1 pt 7 not, \
"r3m_triangle.dat" u 1:2 w l not, \
"r3m_dual.dat" u 1:2 w l lt 0 not, \
"r3m_segments.dat" u 1:2 w l lw 2 not
pause -1
