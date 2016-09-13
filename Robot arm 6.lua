require 'robot_arm'
robot_arm:load_level('exercise 7')
robot_arm.speed = 0.9
for i=1, 9 do
  robot_arm:move_right()
end
for i=1, 5 do
  for i=1, 6 do
    robot_arm:grab()
    robot_arm:move_left()
    robot_arm:drop()
    robot_arm:move_right()
  end
  robot_arm:move_left()
  robot_arm:move_left()
end