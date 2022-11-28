param m; 
param n;
param delta;
param R{i in 1..m, j in 1..n};
param p{i in 1..m};

var x{j in 1..n}>=0;
var d{i in 1..m};
var r{i in 1..m};

minimize  ADR: sum{i in 1..m} p[i]*d[i];

subject to con1 : sum{j in 1..n} x[j]=1;

subject to con2 {i in 1..m}: d[i]>=(-1)*r[i];

subject to con3 {i in 1..m}: d[i]>=0;

subject to con4 : sum{i in 1..m}p[i]*r[i]>=delta;

subject to con5 {i in 1..m}:
	sum{j in 1..n}R[i,j]*x[j]=r[i];
