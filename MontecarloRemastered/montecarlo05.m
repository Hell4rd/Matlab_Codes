clear all;
clc;
year = 2025;

while 1 
    hit_latitude = (90+90) * rand() - 90;
    hit_longitude = 360*rand() -180;
    
    hit_prob = rand() * 100 ;

    if hit_prob < 0.2
        if hit_latitude > 36 && hit_latitude < 42 &&  hit_longitude > 26 &&  hit_longitude < 45
            fprintf("Türkiyeye %d yılında meteor vurdu.\n ",year)
            fprintf("Latitude:%f \n Longitude:%f",hit_latitude,hit_longitude)
            break
        end
    end
    year = year +1;

end
   
