clc,clearvars

A = [0,11,-5 ;-2,17,-7;-4,26 -10]; %Write your matrix.
u = [1;1;1];
% [1;1;1];  The initial choice of eigenvector.
epsilon = 10^-5;
%error of tolerance you want. for exmple 0.001 or 0.0001 etc.
m1=1;
v=A*u; 
m2=max(abs(v));
err=abs(m1-m2);
i = 0;
%Calculating the greatest eigenvalue and the corresponding eigenvector.
 while err>epsilon  
   v=A*u; 
   m2=abs(max(v));
   u=v/m2;
   err=abs(m1-m2);
   m1=m2;
   i = i + 1;
 end
fprintf('\n The greatest eigenvalue is %2.5f \n',m1);
disp(' The corresponding eigenvector is:');
disp(u);
fprintf("%d tekrarda bulduk.",i);