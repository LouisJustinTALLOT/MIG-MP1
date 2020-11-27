//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, 10, 0, 1.0};
//+
Point(3) = {10, 10, 0, 1.0};
//+
Point(4) = {10, 0, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};


//+
Coherence;
//+
Line Loop(5) = {1, 2, 3, 4};
//+
Plane Surface(6) = {5};
//+
Physical Surface(sand) = {6};
//+
Physical Line(CL_g) = {1};
//+
Physical Line(CL_d) = {3};
