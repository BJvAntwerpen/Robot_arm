require 'robot_arm'
robot_arm:load_level("exercise 9")
robot_arm.speed = 0.9999

--[[remove other colors]]--
for i=1, 3 do
  for i=1, 3 do
    robot_arm:grab()
    for i=1, 4 do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=1, 4 do
      robot_arm:move_left()
    end
  end
  robot_arm:move_right()
end
--[[move red]]--
for i=1, 3 do
  robot_arm:grab()
  for i=1, i do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i=1, i do
    robot_arm:move_right()
  end
end
--[[move white]]--
for i=1, 3 do
  for o=1, 2+i do
    robot_arm:move_right()
  end
  robot_arm:grab()
  for o=1, 3+i do
    robot_arm:move_left()
  end
  robot_arm:drop()
end
--[[move green]]--
for i=1, 2 do
  for i=1, 5 do
    robot_arm:move_right()
  end
  robot_arm:grab()
  for i=1, 6-i do
    robot_arm:move_left()
  end
  robot_arm:drop()
end
--[[move blue]]--
for i=1, 3 do
  robot_arm:move_right()
end
robot_arm:grab()
for i=1, 4 do
  robot_arm:move_left()
end
robot_arm:drop()