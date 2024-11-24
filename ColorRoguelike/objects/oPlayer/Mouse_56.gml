if(mouseClicked) //a dash was being charged up
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
		
		//Check if player has Harkon's Blade
		if(global.harkonsBlade) {
			
			//Make sure the player isn't in the shop - if they aren't, subtract 2 health
			if(not(string_copy(room_get_name(room),1,5)="rShop")) {
				global.playerHealth -=2
			}
		}
	
		var tempLaunchCoefficient = launchCoefficient
		
		//If the player has a credit card, manipulate the launch coefficient based on negative gold
		if(global.creditCardOwned){
			tempLaunchCoefficient *= min(1,max(0.2,(400+global.goldOwned)/400)) //At -400 gold, dash speed will reach a minimum of 20%
		}
	
		var xMouseDistance = tempLaunchCoefficient * cos(degtorad(mouseAngle)) * min( maxAimRange,point_distance(mouse_x,mouse_y,mouseClickedX,mouseClickedY))
		var yMouseDistance = tempLaunchCoefficient * sin(degtorad(mouseAngle)) * min( maxAimRange,point_distance(mouse_x,mouse_y,mouseClickedX,mouseClickedY))
		xSpeed = -xMouseDistance / 50
		ySpeed = yMouseDistance / 50
	
		mouseClicked = false
	
		//Set the cooldown for the dash
		alarm_set(2,dashCooldown)
	
		//Create a list of enemy instance IDs and set whether they've been damaged this charge to false
		ds_list_destroy(enemyHitList)
		enemyHitList = ds_list_create()
		
	}
	
	//If player has bomber jacket, we drop a bomb (if the cooldown is available
	if(bomberJacketActive) {
		if(alarm_get(4) <= 0) { //Check the cooldown
			alarm_set(4,bomberCooldown) //Set the cooldown
			instance_create_layer(x,y,layer,oPlayerBomb)
		}
	}
	
}
mouseClicked = false
moveDir = mouseAngle

