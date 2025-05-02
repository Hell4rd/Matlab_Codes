clear all;
clc;

dice =  [1,2,3,4,5,6] ;
player1_pos = 1;
player2_pos = 1;
hole = [];
i = 0;
while length(hole)<  3
        h = randi([2,99]); % Deliklerin aynı gelme ihtimali var yani aynı sayıyı atma ihtimali var. O yüzden test et
        if ~ ismember (h,hole)
            hole(i+1) = h;
            i = i +1;
        end
 end

while 1
    player1_pos = dice(randi(6)) + player1_pos;
    if ismember(player1_pos,hole)
        player1_pos = 1;
    end

    if player1_pos >= 100
        fprintf("Oyunu Player 1 Kazandı.")
        break
    end
    player2_pos = dice(randi(6)) + player2_pos;
    if ismember(player2_pos ,hole) 
        player2_pos = 1;
    end

    if player2_pos >= 100
        fprintf("Oyunu Player 2 Kazandı.")
        
        break
    end
 end

     
    


    
   