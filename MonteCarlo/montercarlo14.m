clear all
close all
clc

i = 1;
path =  [1,3,2,3,3,1,2,2,4,4,2,4,4,4,1,1,4,4,2,3,3,3,1,1,3];
time = 0;
while 1 
    time = time +1; 
    move(i) = randi(4);

    if move(i) == path(i)
        i = i+1;
    end
    


   if i == 26
       fprintf("Doğru yolu %d. dakikada buldun",time);
       break
   end

end