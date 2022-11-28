var x1>=0; # the number of money invested in bonds
var x2>=0; # the number of money invested in home loans
var x3>=0; # the number of money invested in auto loans
var x4>=0; # the number of money invested in personal loans

maximize return: 0.1*x1+0.16*x2+0.13*x3+0.2*x4;

subject to plandb: x4<=x1;
subject to hlandal: x2<=x3;
subject to personalloans: x4<=0.25*(x1+x2+x3+x4);
subject to total: x1+x2+x3+x4<=500000;