% Soru 6

clear all;
clc;
n = 10000;
x = linspace(1,6,n);

h = x(2)-x(1);
y = 0;
f = exp(x);

for i = 1:n-1
    y = y + h*(f(i)+f(i+1))/2;
end

fprintf("Trapezoidal rule ile sonuç:%f\n",y);

w1 = 5/9;
w2 = 8/9;
w3 = 5/9;

r1 = -sqrt(3/5);
r2 = 0;
r3 = +sqrt(3/5);

f1 = exp((2.5*r1)+3.5)*2.5;
f2 = exp(2.5*r2+3.5)*2.5;
f3 = exp(2.5*r3+3.5)*2.5;

y = w1*f1+w2*f2+w3*f3;

fprintf("Gauss Legendre ile sonuç:%f",y);
