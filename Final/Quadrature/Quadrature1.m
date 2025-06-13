clear all
clc
%Euler

n=10000;
a=0;
b=1;
x=linspace(a,b,n);
h=x(2)-x(1);
y=0;
f=x.^2;
for i=1:n-1;
y= y + f(i)*h;
end


disp(y)
