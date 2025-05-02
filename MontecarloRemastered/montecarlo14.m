clear all;
clc;

minute = 0;
i = 1;
the_path =  [1,3,2,3,3,1,2,2,4,4,2,4,4,4,1,1,4,4,2,3,3,3,1,1,3];
while 1
  minute = minute + 1;
  soldier_path(i) = randi(4);
  if soldier_path(i) == the_path(i)
      i = i + 1;
  end

  if i == 26
      break
  end
end


disp(minute)
    

