clear all
clc

year = 2025;
while 1
    point = 0;
    answersheet = randi([1,5],1,100);
    studentsheet =randi([1,5],1,100);
    for k = 1:100
        if studentsheet(k) == answersheet(k)
            point = point +1;
        end
    end

    if point >= 35
        break   
     end
year = year +1;

end


fprintf("Yıl:%d",year);