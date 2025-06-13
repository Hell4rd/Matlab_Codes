clc;
clear;

n = 1000;          % Parçaların sayısı
a = 0;             % İntegrasyonun başlangıç noktası
b = 1;             % İntegrasyonun bitiş noktası
x = linspace(a,b,n); % 0 ile 1 arasında n nokta
h = x(2)-x(1); % Adım genişliği

f = x.^2;          % Fonksiyon değerleri (x^2)

% Trapezoidal integral hesaplama
y= 0;
for i = 1:n-1
   y= y + (f(i) + f(i+1))/2 * h;
end

disp(y);
