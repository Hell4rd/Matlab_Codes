clear all
clc
close all


locx(1) = 0;
locy(1) = 0;
step = 1;


while 1

    if locx(step)>  10 || locx(step) < -10 || locy(step)>  10 || locy(step) < -10
        break
    end

    locx(step+1) = locx(step) + 2*rand()-1 ;
    locy(step+1) = locy(step) + 2*rand()-1 ;
    step = step+1;

end



plot3(1:step,locx,locy)
grid on 
