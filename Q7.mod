param n; 
param m;

param A{i in 1..m, j in 1..n};
param b{i in 1..m};

var x{j in 1..n};
var y{i in 1..m};
var z{i in 1..m};
var p;

minimize  Lp: p;

subject to con1 {i in 1..m}:
	z[i]>=y[i];
subject to con2 {i in 1..m}:
	z[i]>=-y[i];
subject to con3 {i in 1..m}:
    p>=z[i];
subject to con4 {i in 1..m}:
    b[i]-sum{j in 1..n}A[i,j]*x[j]=y[i];
    