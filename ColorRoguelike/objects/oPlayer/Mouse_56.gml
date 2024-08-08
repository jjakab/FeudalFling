/// @description Launch player in target direction
// You can write your code in this editor


if(mouseClicked=true) //a dash was being charged up
{
	//Check if a wind essence needs to be shot
	if(distance_to_point(mouse_x,mouse_y) > maxAimRange) {
		if(windEssence) {
			alarm_set(1,windEssenceDelay)
		}
	}
	
	var xMouseDistance = launchCoefficient * cos(degtorad(mouseAngle)) * min( maxAimRange,distance_to_point(mouse_x,mouse_y))
	var yMouseDistance = launchCoefficient * sin(degtorad(mouseAngle)) * min( maxAimRange,distance_to_point(mouse_x,mouse_y))
	xSpeed = -xMouseDistance / 50
	ySpeed = yMouseDistance / 50
	
	mouseClicked = false	
}
mouseClicked = false
moveDir = mouseAngle

