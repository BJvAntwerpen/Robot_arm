require 'robot_arm'
robot_arm:random_level(1)
robot_arm.speed = 0.9

x=1
for i=1, 6 do
  robot_arm:grab()
  if robot_arm:scan()~= nil then
    for i=1, x do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=1, x do
      robot_arm:move_left()
    end
    x=x+1
  else
    break
  end
end