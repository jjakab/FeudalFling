/// @description Insert description here
// You can write your code in this editor


//Every state change happens at the end of the if statement
//If state is in rotate, change to pause, will only happen every 2 seconds
if (state == "rotate"){
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	player_direction = point_direction(x, y, player_x, player_y)
	state = "pause"
	alarm_set(0, 30)
}
//Stops the square for 0.5 seconds, then moves it to the dash state
else if(state = "pause"){
	state = "dash"
	alarm_set(0, 120)
}
//Dashes the square towards  the player
//Changes square back to rotate after 2 seconds
else if(state == "dash"){
	state = "rotate"
	alarm_set(0,120)
}
