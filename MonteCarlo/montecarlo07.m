clear all
clc

%% ismember kullanarak çözüm
t = 0;



while 1
    t= t +1;
    x = randi(7);
    y = randi(7);
    z = randi(7);
    a = [x,y,z];
    if ismember(3,a)  && ismember(5,a) && ismember(7,a)
        fprintf("%d denemede yaptı.", t+1);
        break
    end
    

end
