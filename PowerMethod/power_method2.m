clear all;
clc;
% Power Methoda başka bir bakış açısı. Daha temiz.

A = [0,11,-5 ;-2,17,-7;-4,26 -10];
u = [1;1;1]; 
m1 = 0; % initial değer herhangi bir random değer de verebilirdim.
tolerence = 10^-5;
while 1
    v = A*u;
    m2 = max(abs(v)); 
    u = v/m2;
    err = abs(m2-m1);
    m1 = m2;
    if err < tolerence
        fprintf("Dominant Özdeğer %.2f\nÖzvektör:",m2);
        disp(u)
        break
    end
end
