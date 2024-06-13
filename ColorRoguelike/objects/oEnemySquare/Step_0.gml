/// @description Insert description here
// You can write your code in this editor


//If square is in the rotating state, spins it around
if(state = "rotate"){
	image_angle = image_angle + 2
}
//If square is in the dashing state, sends it towards the player
//TWEAK: Reduce lateral movement
else if(state = "dash"){
	
	
	
	x+= lengthdir_x(7, player_direction)
	y+= lengthdir_y(7, player_direction)
	
}