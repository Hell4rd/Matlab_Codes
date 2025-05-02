
clear all;
clc;

A = [0,11,-5 ;-2,17,-7;-4,26 -10];
u = [1;1;1]; 


v = A*u;
m1 = max(abs(v));
u = v/m1;
epsilon = 10^-5;

while 1
    v = A*u;
    m2 = max(abs(v));
    u = v/m2;
    err = abs(m2-m1);
    m1 = m2;
    
    if err < epsilon
        disp(m2);
        disp(u);
        break
    end
end



