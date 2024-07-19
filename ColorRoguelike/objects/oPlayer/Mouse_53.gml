/// @description Start aiming player
if((abs(mouse_x - x) < minMouseDistance) and
(abs(mouse_y-y) < minMouseDistance) and
(abs(xSpeed) < maxSpeedToRelaunch) and
(abs(ySpeed) < maxSpeedToRelaunch)) mouseClicked = true

