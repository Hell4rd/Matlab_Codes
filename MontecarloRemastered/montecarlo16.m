clear all;
clc;

age = 25*365;

while 1
    % Yürücek mi Metro mu
    if rand() < 0.5 % Metro.
        if rand()*100 < 0.002 % Ölme oranı
            fprintf("%.0f yaşında öldün.",age/365)
            break
        end   
        if rand()*100 < 0.5 % Kadınla konuşma olasılığı
            if rand()*100 < 3
                 fprintf("%.0f yaşında evlendin.",age/365)
                 break
            end
        end

    else % Yürüyor.
        if rand() * 100 < 0.005 % Ölme ihtimali
             fprintf("%.0f yaşında öldün.",age/365)
             break
        end
        if rand() * 100 < 1 % Kadınla konuşma ihtimali
             if rand()*100 < 3
                 fprintf("%.0f yaşında evlendin.",age/365)
                 break
             end   
        end
    end
  age = age + 1;
end
