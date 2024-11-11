//If there is no player, permanently go into the run state
if(instance_number(oPlayer) < 1) {
	angle = irandom(360)
	xSpeed = lengthdir_x(moveSpeed, angle)
	ySpeed = lengthdir_y(moveSpeed, angle)
	state = "run"
	sprite_index = runSprite
}
else { //If there is a player, start charging up an attack
	//Code for charge state
	state = "charge";
	pauseFirstStep = true
	//alarm_set(1, standardPhaseTime/2)
	
	
	//Set sprite based on child variable
	sprite_index = attackSprite
	image_index = 0
	//Elemental specific-actions
	if(wizardType = "fire") {
		current_player_fire = point_direction(x, y, oPlayer.x, oPlayer.y)
		current_difference_fire = angle_difference(current_player_fire, playerDirection)
		//var curr_distance = point_distance(x, y, oPlayer.x, oPlayer.y)
		var collidedObj = collision_line(x,y,x+lengthdir_x(room_width,current_player_fire),y+lengthdir_y(room_height,current_player_fire),oWall,false,true)
		var curr_distance = 0
		if(collidedObj = noone) { //This should never happen
			curr_distance = max(room_width,room_height)
		}
		else {
			curr_distance = point_distance(x,y,collidedObj.x,collidedObj.y)
		}
	
		var projectile = instance_create_layer(x, y, "Instances", oFireWizardFlash);
		projectile.image_angle = current_difference_fire;
		projectile.image_xscale = curr_distance/sprite_get_width(sFireAttackLine)
	
		with(projectile) {
			pairedObj = other	
		}
	
	}
	else if(wizardType = "acid"){
		var dist,rot
		var player_x = oPlayer.x
		var player_y = oPlayer.y 
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
		
		var spawnInstance = oAcidPool //Spawn a normal acid pool if this is a normal wizard
		if(elite) spawnInstance = oAcidPoolLarge //If this is an elite wizard, spawn a large pool instead
		acidPool = instance_create_layer(xx,yy,"FloorHazards",spawnInstance)
		with(acidPool) {
			pairedObj = other	
		}
	}
	else if (wizardType = "ice") {
		var dist,rot
		var player_x = oPlayer.x
		var player_y = oPlayer.y 
		dist = irandom(maxSnowRange)
		rot = irandom(360)
		xx = player_x + lengthdir_x(dist,rot)
		yy = player_y + lengthdir_y(dist,rot)
		
		while (instance_place(xx,yy,oWall)) {
			dist = irandom(maxSnowRange)
			rot = irandom(360)
			xx = player_x + lengthdir_x(dist,rot)
			yy = player_y + lengthdir_y(dist,rot)
		}
		
		var hazardsDepth = layer_get_depth("FloorHazards")
		var snowSpawnInstance = oSnowTrap //If this is a normal wizard, we spawn a normal trap
		if(elite) snowSpawnInstance = oSnowTrapLarge
		
		snowTrap = instance_create_depth(xx,yy,hazardsDepth+1,snowSpawnInstance)
		with(snowTrap) {
			pairedObj = other
			//image_angle = irandom_range(0,359)
		}
	}
	else if(wizardType = "lightning"){
		current_player_lightning = point_direction(x, y, oPlayer.x, oPlayer.y)
		current_difference_lightning = angle_difference(current_player_lightning, playerDirection)
		var collidedObj = collision_line(x,y,x+lengthdir_x(room_width,current_player_lightning),y+lengthdir_y(room_height,current_player_lightning),oWall,false,true)
		if(collidedObj != noone) { //This should never happen
			lightning_distance = point_distance(x,y,collidedObj.x,collidedObj.y)
		}
		var projectile = instance_create_layer(x, y, "Instances", oLightningWizardFlash);
		projectile.image_angle = current_difference_lightning;
		projectile.image_xscale = lightning_distance/sprite_get_width(sLightningAttackLine)
		with(projectile) {
			pairedObj = other	
		}
	}
}
