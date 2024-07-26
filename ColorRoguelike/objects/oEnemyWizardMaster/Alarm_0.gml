//Code for pause state
state = "pause";
pauseFirstStep = true
//alarm_set(1, standardPhaseTime/2)


//Set sprite based on child variable
sprite_index = attackSprite

//Elemental specific-actions
if(wizardType = "fire") {
	current_player = point_direction(x, y, oPlayer.x, oPlayer.y)
	current_difference = angle_difference(current_player, playerDirection)
	//var curr_distance = point_distance(x, y, oPlayer.x, oPlayer.y)
	var collidedObj = collision_line(x,y,x+lengthdir_x(room_width,current_player),y+lengthdir_y(room_height,current_player),oWall,false,true)
	var curr_distance = 0
	if(collidedObj = noone) {
		curr_distance = max(room_width,room_height)
	}
	else {
		curr_distance = point_distance(x,y,collidedObj.x,collidedObj.y)
	}
	
	var projectile = instance_create_layer(x, y, "Instances", oWizardFlash);
	projectile.image_angle = current_difference;
	projectile.image_xscale = curr_distance/sprite_get_width(sAttackLine)
	
	with(projectile) {
		pairedObj = other	
	}
	
}
else if(wizardType = "acid"){

}
