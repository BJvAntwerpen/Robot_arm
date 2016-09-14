require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.8

for i=8, 1, -1 do
  robot_arm:move_right()
  robot_arm:grab()
  color = robot_arm:scan()
  if color=='red' then
  for i=1, i do
    robot_arm:move_right()
  end
  robot_arm:drop()
  for i=1, i do
    robot_arm:move_left()
  end
else
  robot_arm:drop()
end
end