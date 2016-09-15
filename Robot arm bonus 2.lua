require 'robot_arm'
robot_arm:load_level("exercise 11")
robot_arm.speed = 0.9
r = 0
rp = 0
b = 0
bp = 0
w = 0
wp = 0
g = 0
gp = 0

for i=1, 10 do
  robot_arm:grab()
  if robot_arm:scan() == 'red' then
    if r == 0 then
      r = r+1
      rp = rp + i
      robot_arm:drop()
    else
      x = i - rp
      for i=1, x do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, x do
        robot_arm:move_right()
      end
    end
  elseif robot_arm:scan() == 'blue' then
    if b == 0 then
      b = b+1
      bp = bp + i
      robot_arm:drop()
    else
      x = i - bp
      for i=1, x do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, x do
        robot_arm:move_right()
      end
    end
  elseif robot_arm:scan() == 'white' then
    if w == 0 then
      w = w+1
      wp = wp + i
      robot_arm:drop()
    else
      x = i - wp
      for i=1, x do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, x do
        robot_arm:move_right()
      end
    end
  elseif robot_arm:scan() == 'green' then
    if g == 0 then
      g = g+1
      gp = gp + i
      robot_arm:drop()
    else
      x = i - gp
      for i=1, x do
        robot_arm:move_left()
      end
      robot_arm:drop()
      for i=1, x do
        robot_arm:move_right()
      end
    end
  end
robot_arm:move_right()
end