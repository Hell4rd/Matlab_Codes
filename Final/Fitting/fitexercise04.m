clear all
clc


% Model: y = log(ax + b)

% Veriler
x = [0 1 2 3 4 5]';
y = [0.3 0.7 0.6 0.9 0.9 1.2]';
Y = exp(y);
% Y = ax+b oldu

% Matrisimiz için değerleri ayarlayalım
N = length(x);
Sx = sum(x);
Sx2 = sum(x.^2);
Sxy = sum(x.*Y);
Sy = sum(Y);

M = [N,Sx;
        Sx,Sx2];
V = [Sy;
        Sxy];

coeffs = M\V;
a = coeffs(2);
b = coeffs(1);




x_func = linspace(min(x),max(x),100);
y_func = log(a.*x_func+b);


plot(x,y,'ro',x_func,y_func);
hold on


