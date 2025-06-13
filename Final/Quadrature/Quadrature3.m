clear all;
clc;


clc
clear all

% Gauss-Legendre 3 noktası
x1 = -sqrt(3/5);
x2 = 0;
x3 = sqrt(3/5);

w1 = 5/9;
w2 = 8/9;
w3 = 5/9;

% Fonksiyon: f(x) = e^x
f1 = exp(x1);
f2 = exp(x2);
f3 = exp(x3);

% Yaklaşık integral hesabı
I_approx = w1*f1 + w2*f2 + w3*f3;

