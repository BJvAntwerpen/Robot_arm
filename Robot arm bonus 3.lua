require 'robot_arm'
robot_arm:load_level("exercise 11")
robot_arm.speed = 0.9
r=0
b=0
g=0
w=0

for i=1, 9 do
  robot_arm:move_right()
  robot_arm:grab()
  if robot_arm:scan() == 'red' then
    r = r + 1
  elseif robot_arm:scan() == 'blue' then
    b = b + 1
  elseif robot_arm:scan() == 'green' then
    g = g + 1
  elseif robot_arm:scan() == 'white' then
    w = w + 1
  end
robot_arm:drop()
end
if r>=b then
  if r>=g then
    if r>=w then
      g=0; b=0; w=0
    else r=0; g=0; b=0
    end
  elseif g>=w then
    r=0; b=0; w=0
  else r=0; g=0; b=0
  end
elseif b>=g then
  if b>=w then
    r=0; g=0; w=0
  else r=0; g=0; b=0
  end
elseif g>=w then
  r=0; b=0; w=0
else r=0; g=0; b=0
end
for i=9, 1, -1 do
  robot_arm:grab()
  if robot_arm:scan() == 'red' then
    if r~=0 then
      for i=1, i do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, i do
        robot_arm:move_right()
      end
    else robot_arm:drop()
    end
  elseif robot_arm:scan() == 'blue' then
    if b~=0 then
      for i=1, i do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, i do
        robot_arm:move_right()
      end
    else robot_arm:drop()
    end
  elseif robot_arm:scan() == 'green' then
    if g~=0 then
      for i=1, i do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, i do
        robot_arm:move_right()
      end
      else robot_arm:drop()
    end
  elseif robot_arm:scan() == 'white' then
    if w~=0 then
      for i=1, i do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, i do
        robot_arm:move_right()
      end
    else robot_arm:drop()
    end
  end
robot_arm:move_left()
end