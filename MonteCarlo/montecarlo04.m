clear all
clc


money = 20;



for i = 1:300
    pick = randi([1,16]);
    hit = randi([1,16]);

    if pick == hit
        money = money + 1;
    else 
        money = money - 0.5;

    end
end


fprintf("Borcunuz %d",money);

