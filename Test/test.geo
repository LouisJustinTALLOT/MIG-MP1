//+ Geometrie site La Ribière
// gmsh test.geo -2 -o test.msh 

dx = 2.5;
zone_sol = 1001;
zone_residus = 1002;
zone_fract = 1003;
zone_gran = 1004;

CL_g = 2001;
CL_d = 2002;
CL_h = 2003;

//+
// contour
Point(1) = {0  , 400, 0, dx};
Point(2) = {100 , 400, 0, dx};

// ligne sol
Point(11) = {0, 390, 0, dx};
Point(12) = {100, 390, 0, dx};

// contour résidus
Point(21) = {20, 390, 0, dx};
Point(22) = {40, 390, 0, dx};
Point(23) = {40, 375, 0, dx};
Point(24) = {20, 375, 0, dx};

// contour granites fracturés
Point(31) = {0, 360, 0, dx};
Point(32) = {100, 360, 0, dx};
// contour granites 
Point(41) = {0, 340, 0, dx};
Point(42) = {100, 340, 0, dx};

// contour résidus
Line(1) = {21, 22};
Line(2) = {22, 23};
Line(3) = {23, 24};
Line(4) = {24, 21};
// surface
Line(11) = {1, 2};
// sol
Line(21) = {11, 21};
Line(22) = {22, 12};
// fract
Line(31) = {31, 32};
// gauche
Line(41) = {1, 11};
Line(42) = {11, 31};
Line(43) = {31, 41};
// droite
Line(51) = {2, 12};
Line(52) = {12, 32};
Line(53) = {32, 42};
// fond
Line(61) = {41, 42};


Physical Line(CL_g) = {41,42, 43};
Physical Line(CL_d) = {51,52,53};
Physical Line(CL_h) = {11};


//residus
Line Loop(101) = {1,2,3,4};
Plane Surface(102) = {101};
Physical Surface(zone_residus) = {102};
// fract
Line Loop(103) = {21, -4, -3, -2, 22, 52, -31, -42};
Plane Surface(104) = {103};
Physical Surface(zone_fract) = {104};
// granites
Line Loop(105) = {31, 53, -61, -43};
Plane Surface(106) = {105};
Physical Surface(zone_gran) = {106};
// sol
Line Loop(107) = {11, 51, -22, -1, -21, -41};
Plane Surface(108) = {107};
Physical Surface(zone_sol) = {108};
