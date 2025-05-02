
clear all
clc

M = 0;
N = 10^6;
for i =1:N
    x = rand();
    y = rand();
    length = sqrt(x^2+y^2);
    if ( length <= 1)
        M = M + 1;
    end
end


Pi = 4*M/N;
fprintf("Pi sayısı: %f.3\n",Pi);
fprintf("İçerideki nokta sayısı: %d",M);
