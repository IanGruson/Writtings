.PS
C0 : circle "C0" at (0,0) shaded "lightblue"; 
box invisible "Master" at (0,-0.5) outline "lightblue";
C1 : circle "C1" at (1,0) shaded "lightblue";
line from C0.e to C1.w;
HEAD : box invisible "HEAD*" at (1.5, 0.7);
arrow from HEAD.s to C1.n;
.PE
