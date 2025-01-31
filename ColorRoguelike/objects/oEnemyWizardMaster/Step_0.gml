/*
RUN - Update position and bounce off walls if necessary. Once alarm 0 is triggered --> Go to pause state
CHARGE - Play attacking animation. Once animation is finished --> Go to attack state
ATTACK - Create a projectile depending on element --> Go to cooldown state
COOLDOWN - If cooldown animation is not finished, do nothing. If it is --> Go to run state
*/

prevState = state

if(state == "attack"){
	
	//var player_x = oPlayer.x
	//var player_y = oPlayer.y 
	
	if(wizardType = "fire") {
	
		var projectile = instance_create_layer(x + (2 * sign(image_xscale)), y, "Instances", oWizardFireball);
		projectile.direction = current_player_fire;
		projectile.speed = fireballSpeed
		projectile.projDirection = current_player_fire;
		
		if(elite) {
			for (var i = 0; i < 2; i++) {
			
				var projectile = instance_create_layer(x + (2 * sign(image_xscale)), y, "Instances", oWizardFireball);
				var firedDirection = current_player_fire - (eliteFireballSpread / 2) + (eliteFireballSpread * i)
				projectile.direction = firedDirection
				projectile.speed = fireballSpeed
				projectile.projDirection = firedDirection;
			
			}
		}

	}
	
	else if (wizardType = "acid") {
		
		//The acid pool will turn active at this point - code is in acid pool
		
	}
	
	else if(wizardType = "lightning"){
		
		//The wizard lightning is created in the charge state, so we don't need to do anything here
		
		//Create a lightning bolt
		//var projectile = instance_create_layer(x + (2 * sign(image_xscale)), y, "FloorHazards", oMainLightningStrike, {index : current_player_lightning, creatingInstance : "enemy" });
	}
	
	sprite_index = cooldownSprite
	state = "cooldown"
	
}

else if (state == "run"){
	if(!place_meeting(x + getEnemyMovespeedFactor(xSpeed),y, oWall)){
		x += getEnemyMovespeedFactor(xSpeed)
	}
	else{
		xSpeed = -xSpeed
		x += getEnemyMovespeedFactor(xSpeed)
	}
	if(!place_meeting(x, y + getEnemyMovespeedFactor(ySpeed), oWall)){
		y += getEnemyMovespeedFactor(ySpeed)
	}
	else{
		ySpeed = -ySpeed
		y += getEnemyMovespeedFactor(ySpeed)
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
	
	if(image_index >= image_number) {
		state = "attack"
	}
}

//if we are in the cooldown state, if the animation ends the wizard goes to the run state
else if(state == "cooldown") {
	if(image_index >= image_number ) {
		angle = irandom(360)
		xSpeed = lengthdir_x(moveSpeed, angle)
		ySpeed = lengthdir_y(moveSpeed, angle)
		state = "run"
		var randomized = random_range(0.6, 1.4)
		alarm_set(0, randomized * standardPhaseTime)
		
		sprite_index = runSprite
	
	}
}

if (prevState != state) {
	image_index = 0	
}

event_inherited()
