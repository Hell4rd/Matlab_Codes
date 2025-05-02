clear all
clc

year = 2025;
while 1
    
    point = 0;
    answersheet = randi([1,5],1,100);
    studentsheet =ones(1,100) * 2 ;
    for k = 1:100
        if studentsheet(k) == answersheet(k)
            point = point +1;
        end
    end
        cheat = randi(100);
        detect = randi(100);
        if cheat<30 && detect < 15
            fprintf("Yakalandın yıl: %d",year);
            break
        end

         if cheat < 30 && detect > 15
            point = point +10;
         end


        if point >= 35
             fprintf("Sınavı geçtin yıl:%d",year);
             break
        end
    
year = year +1;
end


