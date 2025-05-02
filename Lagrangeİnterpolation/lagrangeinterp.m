clc; clear all;

x = [0 1 3 5];      % x değerleri
f = [-16 -3 -17 41]; % f(x) değerleri

X = 2; % f(2) hesaplanacak

n = length(x);
L = 0;

for i = 1:n
    li = 1;
    for j = 1:n
        if i ~= j
            li = li *  (X - x(j)) / (x(i) - x(j));
        end
    end
    L = L + li * f(i); % Lagrange polinomuna katkı
end

fprintf("f(2) = %.4f\n", L);
