clear all; clc;

upper = 170;
lower = 100;
escaped_children = 0;

for i = 1:150
    height = (upper-lower)*rand()+lower;
    if height >= 120
        catch_prob = rand();
        if catch_prob > 0.2
            escaped_children = escaped_children +1;
        end
    end
end


fprintf("Kaçan çocuk sayısı %d", escaped_children);