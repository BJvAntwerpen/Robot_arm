require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed = 0.8

x=8
while x>=2 do
  robot_arm:grab()
  for i=1, x do
    robot_arm:move_right()
  end
  robot_arm:drop()
  x = x - 1
  for i=1, x do
    robot_arm:move_left()
  end
  x = x-1
  end