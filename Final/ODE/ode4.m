clear all;
clc;

w = 0.7;
b = 0.3;

f = @(t,y,z) z;
g = @(t,y,z) -b*z-w*w*y;



tinit = 0;
yinit = 1;
zinit = 1;
tfinal = 30;
n = 1000;
h = (tfinal-tinit)/n;

t_values = linspace(tinit,tfinal,n);

y_values = zeros(1,n);
y_values(1) = yinit;

z_values = zeros(1,n);
z_values(1) = zinit;


for i = 1:n-1
    t = t_values(i);
    y = y_values(i);
    z = z_values(i);

    F1y = f(t, y, z);
    F1z = g(t, y, z);

    F2y = f(t + h/2, y + h/2 * F1y, z + h/2 * F1z);
    F2z = g(t + h/2, y + h/2 * F1y, z + h/2 * F1z);

    F3y = f(t + h/2, y + h/2 * F2y, z + h/2 * F2z);
    F3z = g(t + h/2, y + h/2 * F2y, z + h/2 * F2z);

    F4y = f(t + h, y + h * F3y, z + h * F3z);
    F4z = g(t + h, y + h * F3y, z + h * F3z);

    y_values(i+1) = y + (h/6) * (F1y + 2*F2y + 2*F3y + F4y);
    z_values(i+1) = z + (h/6) * (F1z + 2*F2z + 2*F3z + F4z);
end

disp(y_values(n))
disp(z_values(n))

