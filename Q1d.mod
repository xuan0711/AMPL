param n; # n items
param W; #weight limit of my car
param W2; #weight limit of Sunny's car
param w {i in 1..n}; #weight of i-th goodie
param v {i in 1..n}; # value of i-th goodie

var x {i in 1..n} binary; # if put i-th goodie on my car
var y {i in 1..n} binary; # if put i-th goodie on Sunny's car

maximize value: 
sum{i in 1..n} v[i]*x[i]+sum{i in 1..n}v[i]*y[i];

subject to con1: sum{ i in 1..n} w[i]*x[i]<=W;
subject to con2: sum{i in 1..n} w[i]*y[i]<=W2;
subject to con3 {i in 1..n}: x[i]+y[i]<=1;
