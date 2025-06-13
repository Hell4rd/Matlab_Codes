clear all
clc

func = @(x,y) x+y;

yinit = 1;
xinit = 0;
xfinal = 5;
n = 1000000;
x_values = linspace(xinit,xfinal,n);
y_values = zeros(1,n);
y_values(1) = yinit;
h = (xfinal-xinit)/n;

for i = 1:n-1
    y_values(i+1) = y_values(i)+h*func(x_values(i),y_values(i));
end

disp(y_values(n))

    
