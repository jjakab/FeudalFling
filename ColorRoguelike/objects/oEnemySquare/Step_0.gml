/// @description Insert description here
// You can write your code in this editor

if(state = "rotate"){
	image_angle = image_angle + 2
}
else if(state = "dash"){
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	var player_direction = point_direction(x, y, player_x, player_y)
	
	
	x+= lengthdir_x(5, player_direction)
	y+= lengthdir_y(5, player_direction)
	
}