clear all
clc

data = load("jellyhunt.txt");

x = data(:,1);
y = data(:,2);
N = length(x);
Sx3 = sum(x.^3);
Sx6 = sum(x.^6);
Sy = sum(y);
Syx3 = sum((x.^3).*y);

M = [N,Sx3;
        Sx3,Sx6];

V = [Sy;
        Syx3];

coeffs = M\V;

a0 = coeffs(1);
a1 = coeffs(2);

x_func = linspace(min(x),max(x),100);
y_func = a0+a1*x_func.^3;

plot(x,y,'ro',x_func,y_func);



