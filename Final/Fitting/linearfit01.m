clear all
clc

% Defterdeki Linear fit sorusu
% Veriler
x = [0; 1; 2];
y = [3; 6; 9];

% Toplamları hesapla
Sx = sum(x);
Sx2 = sum(x.^2);
Sy = sum(y);
Sxy = sum(x .* y);
N = length(x);

% M ve V matrisleri (normal denklemler için)
M = [N,Sx;
     Sx ,Sx2];

V = [Sy;
     Sxy];

% Katsayıları hesapla
coeff = M \V; 
disp(coeff);
a1 = coeff(1);
a0 = coeff(2);

fprintf('y = %.2fx + %.2f', a1, a0);



x_fit = linspace(min(x),max(x),100);
y_fit = a1 * x_fit + a0;
hold on
plot(x, y, 'ro');
plot(x_fit,y_fit)