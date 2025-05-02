clear all
close all
clc


pob = 0.0008675;
N(1) =100;
i = 1;
while 1

x = rand();
if N(i) == 0
    break
end


if x < pob
    N(i+1) = N(i)-1;
   
else
     N(i+1) = N(i);
       
end

 i = i+1;
end


plot(1:i,N);