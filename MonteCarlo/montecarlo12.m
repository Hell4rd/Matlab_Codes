clear all
close all
clc


loc(1) = 50;
step = 1;

while 1
    
    if loc(step) == 0 || loc(step) == 100
    break
    end

    prob = rand();
   
    
    
    if prob > 0.5
        loc(step+1) = loc(step) +1;
        step = step +1;
    else
        loc(step+1) = loc(step) -1;
        step = step +1;
    end
    
   
end    

fprintf("%d",step);
plot(1:step,loc,"-k")
title("Sarhoş Adamın Adım Sayısı")
xlabel("Adım Sayısı")
ylabel("Eve Yakınlığı")
grid on 
