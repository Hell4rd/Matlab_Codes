clear all
clc


dice = [-4,-3,-1,1,2,4];

while 1
        d = randi(6,1,3);
        JonScore = sum(dice(d));
        if JonScore == 0
            fprintf("Jon Kazandı");
            break
        end

        a = randi(6,1,3);
        TyrionScore = sum(dice(a));
        if TyrionScore == 0
            fprintf("Tyrion Kazandı");
            break
        end
end

disp(dice(d))