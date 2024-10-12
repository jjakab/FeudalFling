if(mouseClicked=true) //a dash was being charged up
{
	
	//Check if the dash conditions are satisfied before launching the player
	if(((abs(xSpeed) < maxSpeedToRelaunch) and (abs(ySpeed) < maxSpeedToRelaunch)) //Dash speed is below a threshold
	or (alarm_get(2) <= 0)) {
	
	
		//Check if a wind essence needs to be shot
		if(point_distance(mouse_x,mouse_y,mouseClickedX,mouseClickedY) > maxAimRange) {
			if(windEssence) {
				alarm_set(1,windEssenceDelay)
			}
		}
	
		var xMouseDistance = launchCoefficient * cos(degtorad(mouseAngle)) * min( maxAimRange,point_distance(mouse_x,mouse_y,mouseClickedX,mouseClickedY))
		var yMouseDistance = launchCoefficient * sin(degtorad(mouseAngle)) * min( maxAimRange,point_distance(mouse_x,mouse_y,mouseClickedX,mouseClickedY))
		xSpeed = -xMouseDistance / 50
		ySpeed = yMouseDistance / 50
	
		mouseClicked = false
	
		//Set the cooldown for the dash
		alarm_set(2,dashCooldown)
	
		//Create a list of enemy instance IDs and set whether they've been damaged this charge to false
	
		ds_list_destroy(enemyHitList)
		enemyHitList = ds_list_create()
	}
	
}
mouseClicked = false
moveDir = mouseAngle

