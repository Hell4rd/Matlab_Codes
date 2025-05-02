clear all;
clc;
close all;



t = 1;
h(1) = 10000;
o(1) = 10000;
h2o(1) = 0;
while 1 
   
    if h(t)< 2 || o(t) < 1
        break
    end
    
    prob_h2o(t) = h(t)/o(t);
    a = rand();

    if a < prob_h2o(t)
        h(t+1) = h(t) - 2;
        o(t+1) = o(t) - 1;
        h2o(t+1) = h2o(t) +1;
    else 
        h(t+1) = h(t);
        o(t+1) = o(t);
        h2o(t+1) = h2o(t);
    end

t = t +1;

end
plot(1:t,o,'k',1:t,h,'r',1:t,h2o,'b');
title("Oksijen ve Hidrojenin Su Oluşturması")
legend("Oksijen","Hidrojen","Su")
grid on 
xlabel("Zaman")
ylabel("Molekül Sayısı")

