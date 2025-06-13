clear all
clc

data = load('sleeplessnights.txt');

x = data(:,1);
y = data(:,2);

for i = 1:length(y)
    y(i) = (y(i)-32)*5/9;
end

N = length(x);
Sx = sum(x);
Sy = sum(y);
Sx2 = sum(x.^2);
Sxy = sum(x.*y);

M = [N,Sx;
        Sx,Sx2];
V = [Sy;
        Sxy];

coeffs = M\V;

a0 = coeffs(1);
a1 = coeffs(2);

x_func = linspace(min(x),max(x),100);
y_func = a0+a1*x_func;

plot(x,y,'ro',x_func,y_func);


