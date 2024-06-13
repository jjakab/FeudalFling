/// @description Insert description here
// You can write your code in this editor

//If state is in rotate, change to dash, will only happen every 2 seconds
if (state == "rotate"){
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	player_direction = point_direction(x, y, player_x, player_y)
	state = "dash"
	alarm_set(0, 120)
}
//Same as prior, if state is in dash, change back to rotate for 2 seconds
else if(state == "dash"){
	state = "rotate"
	alarm_set(0,120)
}