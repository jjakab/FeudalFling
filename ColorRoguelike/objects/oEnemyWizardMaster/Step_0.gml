	
if(state == "attack"){
	
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	if(wizardType = "fire") {
	
		var current_player = point_direction(x, y, player_x, player_y)
		var current_difference = angle_difference(current_player, playerDirection)
	
		var projectile = instance_create_layer(x, y, "FloorHazards", oWizardFireball);
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
	
	angle = irandom(360)
	xSpeed = lengthdir_x(moveSpeed, angle)
	ySpeed = lengthdir_y(moveSpeed, angle)
	state = "run"
	alarm_set(0, standardPhaseTime)
	
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
}
else if(state == "pause"){
	
}
