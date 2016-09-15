require 'robot_arm'
robot_arm:random_level(4)
robot_arm.speed=0.99
a=0
b=0
c=0
d=0

for i=1, 6 do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
  robot_arm:move_right()
  a=a+1
  robot_arm:drop()
  robot_arm:move_left()
else
  break
end
end
robot_arm:move_right()
robot_arm:move_right()
robot_arm:move_right()
for i=1, 6 do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
  robot_arm:move_left()
  b=b+1
  robot_arm:drop()
  robot_arm:move_right()
else
  break
end
end
robot_arm:move_left()
for i=1 ,b do
  robot_arm:grab()
  robot_arm:move_left()
  robot_arm:move_left()
  robot_arm:drop()
  robot_arm:move_right()
  robot_arm:move_right()
end
robot_arm:move_left()
for i=1 ,a do
  robot_arm:grab()
  robot_arm:move_right()
  robot_arm:move_right()
  robot_arm:drop()
  robot_arm:move_left()
  robot_arm:move_left()
end
for i=1, 6 do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
  robot_arm:move_left()
  c=c+1
  robot_arm:drop()
  robot_arm:move_right()
else
  break
end
end
robot_arm:move_right()
for i=1, 6 do
  robot_arm:grab()
  if robot_arm:scan() ~= nil then
  robot_arm:move_right()
  d=d+1
  robot_arm:drop()
  robot_arm:move_left()
else
  break
end
end
robot_arm:move_right()
for i=1 ,d do
  robot_arm:grab()
  robot_arm:move_left()
  robot_arm:move_left()
  robot_arm:drop()
  robot_arm:move_right()
  robot_arm:move_right()
end
robot_arm:move_left()
robot_arm:move_left()
robot_arm:move_left()
for i=1 ,c do
  robot_arm:grab()
  robot_arm:move_right()
  robot_arm:move_right()
  robot_arm:drop()
  robot_arm:move_left()
  robot_arm:move_left()
end