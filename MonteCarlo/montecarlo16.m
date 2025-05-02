clear all
close all
clc



age = 25*365;
day = 1;
die_pt = 0.002;
die_pw = 0.005;

woman_counter = 0;
mprob = 3;


while 1
    prob_direct = rand();
    %Trene girerse
    if prob_direct < 0.5
        % Trende ölme riski
        die_prob = rand()*100;
    
        if die_prob < die_pt
            fprintf("Yaş %1.f, tren ile işe giderken öldün\n",date);
            fprintf("Ölmeden önce %1.f kadınla konuştun..",woman_counter);
            break
        else
            %Kızla konuşma ihtimali
            meet_probt = rand()*100;
        end
            if meet_probt < 0.5
                %evlenme ihtimali
                marriage_probt = rand()*100;
                woman_counter = woman_counter + 1 ;
                if marriage_probt < 3
                    fprintf("Evlendiğinde %1.f yaşındaydın.\n",date);
                    fprintf("Evlenmeden %1.f kadınla konuştun.",woman_counter);
                    break
                end
            end

                
    

    else 
        % Yürürken ölme riski
        die_prob = rand()*100;
   
        if die_prob < die_pw
            fprintf("Yaş %1.f, yürürken işe giderken öldün\n",date);
            fprintf("Ölmeden önce %1.f kadınla konuştun.",woman_counter);
            break
        else
            %Kızla konuşma ihtimali
            meet_probw = rand()*100;
        end
            if meet_probw < 0.5
                %Evlenme ihtimali
                marriage_probw = rand()*100;
                woman_counter = woman_counter + 1 ;
                if marriage_probw < 3
                    fprintf("Evlendiğinde %2.f yaşındaydın.\n",date);
                    fprintf("Evlenmeden %1.f kadınla konuştun..",woman_counter);
                    break
                end
            end
                
    end
day = day +1 ;
date = (age + day)/365;

end


