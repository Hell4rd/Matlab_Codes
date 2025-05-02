clear all
close all
clc

t = 1;



hydrogen(1) = 10000;
oxygen(1) = 10000;
h2o(1) = 0;

while 1
    if hydrogen(t) == 0
        break
    end

    prob = hydrogen(t)/oxygen(t);

    if rand() < prob
        hydrogen(t+1) = hydrogen(t) -2;
        oxygen(t+1) = oxygen(t) -1;
        h2o(t+1) = h2o(t) +1;
    else
        hydrogen(t+1) = hydrogen(t);
        oxygen(t+1) = oxygen(t);
        h2o(t+1) = h2o(t);
    end
    t = t + 1 ;      
end
    

 plot(1:t,oxygen,'-k',1:t,hydrogen,'-r',1:t,h2o,'-b');
 title('Su Oluşurken Oksijen ve Hidrojen Sayıları')
 legend('oxygen','hydrogen','water')
 grid on