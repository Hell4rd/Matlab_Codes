clear all;
clc;

year = 2025;
my_ans = ones(1,100)*2;
while 1 
    point = 0;
    ans_sheet = randi([1,5],1,100);
    
    for i = 1:100
        if ans_sheet(i) == my_ans(i)
            point = point + 1;
        end
    end
    
    cheat_prob = rand();
    if cheat_prob <  0.3
        caught_prob = rand();
        if caught_prob < 0.15 
            fprintf("Okuldan atıldın.Yıl: %d",year)
            break
        end
        point = point + 10;
    end
    
    if point > 35 
         fprintf("Sınavı geçtin Yıl: %d",year)
        break
    end

year = year +1;
end