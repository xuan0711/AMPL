param n; # n items
param W; #weight limit of my car
param w { i in 1..n}; #weight of i-th goodie
param v { i in 1..n}; # value of i-th goodie

var x {i in 1..n} binary; # if put i-th goodie on my car

maximize value: sum{i in 1..n} v[i]*x[i];

subject to con1: sum{ i in 1..n} w[i]*x[i]<=W;



