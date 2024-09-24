//Player is trying to start a dash
//One of two conditions need to be met to start a dash
if(
((abs(xSpeed) < maxSpeedToRelaunch) and (abs(ySpeed) < maxSpeedToRelaunch)) //Dash speed is below a threshold
or (alarm_get(2) <= 0)) {
	mouseClicked = true
	mouseClickedX = mouse_x
	mouseClickedY = mouse_y
}