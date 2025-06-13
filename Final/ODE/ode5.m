% Ode exercise 1
clear all
clc
lambda = 0.0008675;

Ninit = 100;
xinit = 0;
xfinal = 100;
n = 10000;
f = @(x,y) -lambda*y;

x_value = linspace(xinit,xfinal,n);
h = x_value(2)-x_value(1);

y_value = zeros(1,n);
y_value(1) = Ninit;

% Euler
for i = 1:n-1
    y = y_value(i);
    x = x_value(i);
    y_value(i+1) = y + h*f(x,y);
end

fprintf("Euler metoduyla: %f\n",y_value(n))

% RK2

y_value = zeros(1,n);
y_value(1) = Ninit;

for i = 1:n-1

    y = y_value(i);
    x = x_value(i);
    k1 = f(x,y);
    k2 = f(x_value(i+1),y+h*k1);

    y_value(i+1) = y + h/2*(k1+k2);

end
fprintf("RK2 metoduyla: %f\n",y_value(n))

% RK4

y_value = zeros(1,n);
y_value(1) = Ninit;

for i = 1:n-1

    y = y_value(i);
    x = x_value(i);
    k1 = f(x,y);
    k2 = f(x+h/2,y+(h/2)*k1);
    k3 = f(x+h/2,y+(h/2)*k2);
    k4 = f(x+h,y+h*k3);

    y_value(i+1) = y + (h/6)*(k1+2*k2+2*k3+k4);
end

fprintf("RK4 metoduyla: %f\n",y_value(n))
