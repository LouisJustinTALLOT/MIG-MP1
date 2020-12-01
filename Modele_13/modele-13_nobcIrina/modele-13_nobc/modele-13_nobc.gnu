set term post color

set out "toto.ps"
splot "r3m_nodes.dat" u 2:3:4 w p ps 1 pt 7 not, \
  "r3m_triangle.dat" u 1:2:3 w l not, \
  "r3m_dual.dat" u 1:2:3 w l lt 0 not, \
  "r3m_segments.dat" u 1:2:3 w l lw 2 not
!pstopdf toto.ps
!rm toto.ps
