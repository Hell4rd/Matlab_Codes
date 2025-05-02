clear all;
clc;

year = 2025;



while 1
    point = 0;
    for i = 1:100
        question_ans = randi(5);
        my_ans = randi(5);
        if question_ans == my_ans
            point = point +1;
        end
    end

    if point >= 30
        fprintf("Sınavı başarıyla %d yılında geçtin\nPuanın:%d",year,point);
        break
    end
    year = year + 1;  
end   