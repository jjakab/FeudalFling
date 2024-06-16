/// @description Insert description here
// You can write your code in this editor


//If square is in the rotating state, spins it around
if(state = "rotate"){
	image_angle = image_angle + rotSpeed
}
//If square is in the dashing state, sends it towards the player
//TWEAK: Introduce lateral movement, maybe through checking the x/y ang
else if(state = "dash"){
	
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	var current_player = point_direction(x, y, player_x, player_y)
	var current_difference = angle_difference(current_player, playerDirection)
	
	if(current_difference > 0){
		playerDirection += angleIncrement
	}
	else if(current_difference < 0){
		playerDirection -= angleIncrement
	}
	
	x+= lengthdir_x(dashSpeed, playerDirection)
	y+= lengthdir_y(dashSpeed, playerDirection)
	
	
}
else if(state = "pause"){
	
}

event_inherited()