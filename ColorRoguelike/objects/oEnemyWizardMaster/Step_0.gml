
if(state == "attack"){
	
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	if(wizardType = "fire") {
		
	
		var projectile = instance_create_layer(x, y, "FloorHazards", oWizardFireball);
		projectile.direction = current_player;
		projectile.speed = fireballSpeed
		sprite_index = sEnemyFireWizard
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
		sprite_index = sEnemyAcidWizard
		instance_create_layer(xx,yy,"Instances",oAcidPool)
		
	}
	
	angle = irandom(360)
	xSpeed = lengthdir_x(moveSpeed, angle)
	ySpeed = lengthdir_y(moveSpeed, angle)
	state = "run"
	var randomized = random_range(0.6, 1.0)
	alarm_set(0, randomized * standardPhaseTime)
	
	
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

else if(state == "pause"){
	//Orient to face the correct direction
	if(oPlayer.x > x) {
		image_xscale = 1	
	}
	else {
		image_xscale = -1	
	}
	
	
}

event_inherited()
