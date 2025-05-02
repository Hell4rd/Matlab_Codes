
clear all;
clc;

match_count = 34;
score = 0;

for i = 1:match_count
    
    prob = rand();

    if prob < 0.4 % Kazandı
        score = score + 3 ;
    elseif  prob > 0.9 % Berabere
        score = score + 1;
    end
end

fprintf("Skor: %d",score)