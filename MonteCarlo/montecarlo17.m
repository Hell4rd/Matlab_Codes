
clear all
close all
clc

player1 = 1;
player2 = 1;
turn = 1;

for i = 1:3
    hole(i) = randi([2, 99]);
end

while 1

    dice = randi(6);
    player1 = player1 + dice;

    if player1 > 100 
         fprintf("Player 1, %d. turda kazandı!\n", turn);
        break

    elseif  ismember(player1,hole)
        player1 = 1;
        fprintf("Player 1 deliğe düştü! Başlangıca döndü.Bu sırada Player 2 %d. adımda\n",player2);
    end

    dice = randi(6);
    player2= player2 + dice ;

    if player2 > 100 
        fprintf("Player 2, %d. turda kazandı!\n", turn);
        break

    elseif  ismember(player2,hole)
        player2= 1;
        fprintf("Player 2 deliğe düştü! Başlangıca döndü.Bu sırada Player 1 %d. adımda\n",player1);
    end
    turn = turn + 1;
end




    
    