/// @description Insert description here
// You can write your code in this editor

if(state == "attack"){
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	var current_player = point_direction(x, y, player_x, player_y)
	var current_difference = angle_difference(current_player, playerDirection)
	
	var projectile = instance_create_layer(x, y, "Instances", oWizardFireball);
	projectile.direction = current_player;
	projectile.speed = 2
	state = "run"
	alarm_set(0, 120)
	angle = irandom(360)
	xSpeed = lengthdir_x(moveSpeed, angle)
	ySpeed = lengthdir_y(moveSpeed, angle)
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

