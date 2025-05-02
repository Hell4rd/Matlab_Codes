clear all;
clc;

x_pos = 0; y_pos = 0;
seconds = 0;
while 1
    step_x = 2*rand()-1;
    step_y = 2*rand()-1;
    
    x_pos = x_pos + step_x;
    y_pos = y_pos + step_y;
    
    seconds = seconds + 1;

    if abs(x_pos) > 10 || abs(y_pos) > 10
        break
    end
end

fprintf("Kutudan çıkman %d saniye sürdü",seconds)

    
    

