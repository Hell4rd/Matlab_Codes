clear all;
clc;
% istanbul hava durumu sorusu
x = [15 
45 
75 
105 
135 
165 
195 
225 
255 
285 
315 
345];
 
 f = [6.1 
 6.1
 7.9
 12.3
 16.9
 21.6
 23.9
 23.8
 20.1
 15.7
 11.4
 8.1 ];

L = 0;
n = length(x);
L_values = [ ];

for X = 1:365
    L = 0;
    for i = 1:n
        li = 1;
        for j = 1:n
            if i ~= j
                li = li *  (X - x(j)) / (x(i) - x(j));
            end
        end
      L = L + li*f(i);
    end
     L_values(X) = L;
end



