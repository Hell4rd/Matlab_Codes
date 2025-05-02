% Football Season Simulation

clear all
clc


win = 0;
draw = 0;
lose = 0; 
point = 0;


for i = 1:34
    status = rand()*100;
    if status < 40
        point = point+3;
        win = win+1;
    elseif status > 90
        point = point+1;
        draw = draw+1;
    else
        lose = lose+1;
    

    end
end 


fprintf('Toplam Kazanılan Puan:%d\n',point);
fprintf('Kazanılan Toplam Maç:%d\n',win);
fprintf('Kaybedilen Toplam Maç:%d\n',lose);
fprintf('Berabere Kalınan Toplam Maç:%d\n',draw);
    
