clear all
clc

i = true;
year = 2025;
tr_xi = 36;
tr_xf= 42;
tr_yi = 26;
tr_yf = 45;

meteor_calc = 0;

while i == true
    olasilik = rand();
    if olasilik <= 0.002
        x = randi([-90,90]);
        y = randi([-180,180]);
        meteor_calc = meteor_calc + 1;
        
        if x <= tr_xf && tr_xi >= x && y >= tr_yi && y <= tr_yf
            fprintf("Türkiyeye %d yılında meteor çarptı\nAynı sürede dünyaya %d meteor çarptı",year,meteor_calc);
            i = false;
        else 
            year = year + 1;
        end
    else
        year = year + 1;
    end
end


            









