% The Problem #2 of Monte Carlo
clear all
clc

c = 0;
k = 0;

for i = 1:150
   height =  randi([100,170]);
   if (height > 120)
       c = c+1;
   end
end

for i = 1:c
    esc = randi(100);
    if (esc>20)
        k = k+1;
    end
end

fprintf('Duvardan atlayan çocuk sayısı: %d\n',c);
fprintf('Kaçan Çocuk: %d',k);
        

