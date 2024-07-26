/*
RUN - Update position and bounce off walls if necessary. Once alarm 0 is triggered --> Go to pause state
CHARGE - Play attacking animation. Once animation is finished --> Go to attack state
ATTACK - Create a projectile depending on element --> Go to cooldown state
COOLDOWN - If cooldown animation is not finished, do nothing. If it is --> Go to run state
*/

prevState = state

if(state == "attack"){
	
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	if(wizardType = "fire") {
		
	
		var projectile = instance_create_layer(x + (2 * sign(image_xscale)), y, "FloorHazards", oWizardFireball);
		projectile.direction = current_player;
		projectile.speed = fireballSpeed

	}
	
	else if (wizardType = "acid") {
		var dist,rot
		dist = irandom(maxAcidRange)
		rot = irandom(360)
		xx = player_x + lengthdir_x(dist,rot)
		yy = player_y + lengthdir_y(dist,rot)
		
		while (instance_place(xx,yy,oWall)) {
			dist = irandom(maxAcidRange)
			rot = irandom(360)
			xx = player_x + lengthdir_x(dist,rot)
			yy = player_y + lengthdir_y(dist,rot)
		}
		instance_create_layer(xx,yy,"Instances",oAcidPool)
		
	}
	
	sprite_index = cooldownSprite
	state = "cooldown"
	
}

else if (state == "run"){
	if(!place_meeting(x + xSpeed,y, oWall)){
		x += xSpeed
	}
	else{
		xSpeed = -xSpeed
		x += xSpeed
	}
	if(!place_meeting(x, y + ySpeed, oWall)){
		y += ySpeed
	}
	else{
		ySpeed = -ySpeed
		y += ySpeed
	}
	
	//Orient to face the correct direction
	if(xSpeed > 0) {
		image_xscale = 1	
	}
	else {
		image_xscale = -1	
	}
	
	//Once we are re-oriented, we need to move outside of a wall (since flipping the sprite may have put us inside one)
	unstick()

}

else if(state == "charge"){
	
	//If this is the first step of the pause state, re-orient
	if(pauseFirstStep) {
		pauseFirstStep = false
		
		//Orient to face the correct direction
		if(oPlayer.x > x) {
			image_xscale = 1	
		}
		else {
			image_xscale = -1	
		}
		
	}
	if(image_index >= image_number - 1) {
		state = "attack"
	}
}

//if we are in the cooldown state, if the animation ends the wizard goes to the run state
else if(state == "cooldown") {
	if(image_index >= image_number - 1) {
		angle = irandom(360)
		xSpeed = lengthdir_x(moveSpeed, angle)
		ySpeed = lengthdir_y(moveSpeed, angle)
		state = "run"
		var randomized = random_range(0.6, 1.0)
		alarm_set(0, randomized * standardPhaseTime)
		
		sprite_index = runSprite
	
	}
}

if (prevState != state) {
	image_index = 0	
}

event_inherited()
