/// @description Insert description here
// You can write your code in this editor
event_inherited()

var player = oPlayer
var distToPlayer = point_distance(x, y, player.x, player.y)

switch (state){
	
	case "amble":
		if(distToPlayer > slamRange){
			var dir = point_direction(x, y, player.x, player.y)
			if(!place_meeting(lengthdir_x(xSpeed, dir),y, oWall)){
				x += lengthdir_x(xSpeed, dir)
			}
			if(!place_meeting(x, lengthdir_y(ySpeed, dir), oWall)){
				y += lengthdir_y(ySpeed, dir)
			}
		}
}