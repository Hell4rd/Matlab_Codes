clear all
clc

func = @(x,y) x + y;  % y' = x + y

% Başlangıç koşulları
xinit = 0;
yinit = 1;
xfinal = 5;
n = 1000000;
h = (xfinal - xinit)/n;

% Değer dizileri
x_values = linspace(xinit, xfinal, n);
y_values = zeros(1, n);
y_values(1) = yinit;

% RK4 formülü uygulanıyor:
for i = 1:n-1
    x = x_values(i);
    y = y_values(i);
    
    k1 = func(x, y);
    k2 = func(x + h/2, y + (h/2)*k1);
    k3 = func(x + h/2, y + (h/2)*k2);
    k4 = func(x + h, y + h*k3);
    
    y_values(i+1) = y + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
end

% Sonuç:
disp(y_values(n))
