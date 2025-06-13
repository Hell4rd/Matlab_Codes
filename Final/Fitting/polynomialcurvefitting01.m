
% Defterdeki Polynomial curve fitting sorusu. Linear fitin aynısı polinomun
% orderi değişiyor.
clear all
close all
clc

x = [1,2,3,4,5];
y = [2,4,1,3,8];

for k=1:4
        v(k)=sum((x.^(k-1)).*y);
    for l=1:4
        M(k,l) =sum(x.^(k+l-2));
    end
end


coeffs=M\v';

a0 = coeffs(1);
a1 = coeffs(2);
a2 = coeffs(3);
a3 = coeffs(4);



xfunc = linspace(x(1)-0.1,x(5)+0.1,100);
yfunc = a0 + a1*xfunc+a2*xfunc.^2+a3*xfunc.^3;
plot(x,y,'*',xfunc,yfunc)
