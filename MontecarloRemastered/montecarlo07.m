clear all;
clc;

monkey_count = 0;

while 1
   monkey_count = monkey_count + 1;
   key1 = randi(7);
   key2 = randi(7);
   key3 = randi(7);
    
   if key1*key2*key3 == 105
       fprintf("%d. maymun başardı.",monkey_count);
       break
   end
end

