/// @description Insert description here
// You can write your code in this editor
event_inherited()

var player = oPlayer
var distToPlayer = point_distance(x, y, player.x, player.y)
if(state="amble"){
		var dir = point_direction(x, y, player.x, player.y)
		if(distToPlayer > slamRange){
			if(!place_meeting(x+lengthdir_x(xSpeed, dir),y, oWall)){
				x += lengthdir_x(xSpeed, dir)
			}
			if(!place_meeting(x, y + lengthdir_y(ySpeed, dir), oWall)){
				y += lengthdir_y(ySpeed, dir)
			}
		}
		else{
			state = "charging"	
			alarm_set(0,5)
		}
		if( lengthdir_x(xSpeed, dir) > 0) {
			image_xscale = 1	
		}
		else {
			image_xscale = -1	
		}
}

if(state="charging"){
	if(image_index >= image_number) {
		alarm_set(1,1)
		state = "cooldown"
		instance_destroy(slamID)
	}
}

if(state="cooldown"){
	
}
		