% Exercise 1 

clear all;
clc;

n = 2000;
x = linspace(3,5,n);
h = x(2)-x(1);
f = exp(-x);
y = 0;
for i = 1:n-1
    y = y + (f(i)+f(i+1))/2* h;
end
