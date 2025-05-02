clear all;
clc;

% ALI için harfler. A = 1 , L = 12 I = 9 
monkey_count = 0;

while 1 
    monkey_count = monkey_count + 1;
    letter1 = randi(27);
    letter2 = randi(27);
    letter3 = randi(27);

    if letter1 == 1 && letter2 == 12  && letter3 == 9
        fprintf("%d. maymun Ali yazmayı başardı. ",monkey_count);
        break
    end
end