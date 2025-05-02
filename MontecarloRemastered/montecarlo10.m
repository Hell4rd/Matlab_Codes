clear all;
clc;

dice = [-4,-3,-1,1,2,4];


while 1 

    % Jonun Sırası
    jon_score = 0;
    for i = 1:3
        a = randi(6);
        d = dice(a);
        jon_score = jon_score + d;
    end

    if jon_score == 0
        fprintf("Jon Kazandı")
        break
    end

    %Tyrionun Sırası
    tyrion_score = 0;
     for i = 1:3
        a = randi(6);
        d = dice(a);
        tyrion_score = tyrion_score + d;
    end

     if tyrion_score == 0
        fprintf("Tyrion Kazandı")
        break
     end
end