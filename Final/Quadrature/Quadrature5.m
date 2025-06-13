% Soru 2

clear all
clc

r1 = -(1/3)^(1/2);
r2 = (+1/3)^(1/2);

f1 = exp(r1);
f2 = exp(r2);

y = f1+f2;
fprintf("2 noktada y = %f\n",y);

r1 = -(3/5)^(1/2);
r2 = 0;
r3 = +(3/5)^(1/2);

f1 = exp(r1);
f2 = exp(r2);
f3 = exp(r3);

w1 = 5/9;
w2 = 8/9;
w3 = 5/9;


y = w1*f1+w2*f2+w3*f3;

fprintf("3 noktada y = %f",y);



