var x1>=0;  # the salary of Tom 
var x2>=0;  # the salary of Peter 
var x3>=0;  # the salary of Nina 
var x4>=0;  # the salary of Samir 
var x5>=0;  # the salary of Gary 
var x6>=0;  # the salary of Linda 
var x7>=0;  # the salary of Bob  

minimize salary: x1+x2+x3+x4+x5+x6+x7;

subject to con1: x1 >= 20000;
subject to con2: x2 >= x1 + 5000;
subject to con3: x3 >= x1 + 5000;
subject to con4: x4 >= x1 + 5000;
subject to con5: x5 >= x1 + x2;
subject to con6: x6 = x5 + 200;
subject to con7: x3 + x4 >= 2 * x1 + 2 * x2;
subject to con8: x7 >= x4;
subject to con9: x7 + x2 >= 60000;
subject to con10: x6 <= x1 + x7;