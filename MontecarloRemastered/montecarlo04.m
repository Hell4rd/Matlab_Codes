clear all;
clc;

round = 0;
money = 20;
for i = 1:300
    % Çıkacağı delik
    row = randi(4);  
    column = randi(4);
    % Vuracağım delik
    hit_row = randi(4);
    hit_column = randi(4);

    if row == hit_row && column == hit_column
        money = money + 1;
    else
        money = money - 0.5;
    end
    round = round + 1;

end

fprintf("Kalan para: %2.f",money)