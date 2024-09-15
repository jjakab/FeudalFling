/// @description Insert description here
// You can write your code in this editor
event_inherited()



var player = oPlayer
var distToPlayer = point_distance(x, y, player.x, player.y)

//Basic state, chases after player slowly.
if(state="amble"){
		var dir = point_direction(x, y, player.x, player.y)
		//Check to see if player is within ogre trigger range
		if(distToPlayer > slamRange){
			if(!place_meeting(x+lengthdir_x(xSpeed, dir),y, oWall)){
				x += lengthdir_x(xSpeed, dir)
			}
			if(!place_meeting(x, y + lengthdir_y(ySpeed, dir), oWall)){
				y += lengthdir_y(ySpeed, dir)
			}
		}
		//Swap the state into charging if player gets close enough
		else{
			state = "charging"	
			sprite_index = sEnemyOgreCharge
			image_index = 0
			slamID = instance_create_layer(x, y, "Instances", oOgreSlam)
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
		state="cooldown"
		instance_destroy(slamID)
		explodeID = instance_create_layer(x, y, "Instances", oOgreExplode)
		//Set the ogre to go a cooldown sprite for a bit, after the explode animation is over.
		alarm_set(1, explodeAnimationTime)
		//Set the ogre back to ambling once its done with cooldown
		alarm_set(2, cooldownAnimationTime)
	}
}

if(state = "cooldown"){
	
}