clear all;
clc;
close all



loc(1) = 50;
t = 1;

while 1 
    if loc(t) == 0 || loc(t) == 100
        break
    end
    
    
    if rand()< 0.5
        loc(t+1) = loc(t) + 1;
    else
        loc(t+1) = loc(t) - 1;
    end
    t = t + 1;
   
end


plot(1:t,loc,"r")
ylabel("Pozisyon")
xlabel("Adım Sayısı")
