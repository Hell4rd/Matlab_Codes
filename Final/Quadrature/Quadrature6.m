% Soru 3

clear all;
clc;

pi =  3.14158;
g = 9.80665;
L = 20 ;
theta0 = 3;

tapprox = 2*pi*(L/g)^(1/2);

% şimdi t exact.
n = 10000;
x = linspace(0,pi/2,n);

h = x(2)-x(1);


while 1
    y = 0;
    f = 1./sqrt(1-(sin(theta0/2)^2*sin(x).^2));
    for i = 1:n-1
    y = y + h*((f(i)+f(i+1))/2);
    end
    texact = 4*sqrt(L/g)*y;
    if abs(tapprox-texact) <  0.1
        fprintf("Gerçek değer:%f\nYaklaşık Değer:%fTheta'nın Değeri:%f",texact,tapprox,theta0);
        break
    end
    
    theta0 = theta0 - 0.05;
end




