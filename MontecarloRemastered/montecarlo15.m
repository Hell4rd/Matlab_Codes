clear all;
clc;
close all;

lambda = 0.0008675;
aN(1) = 100;
step = 1;
while 1 
    if N(step) == 0
        break
    end
    
    
    if rand() < lambda
        N(step+1) = N(step) -1;
    else
        N(step+1) = N(step);
    end
  
    step = step + 1 ;
end

plot(1:step,N);
grid on