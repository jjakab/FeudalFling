event_inherited()

//Basic state, chases after player slowly.
if(state="amble"){
	if(instance_exists(oPlayer)){
		var dir = point_direction(x, y, oPlayer.x, oPlayer.y)
		var distToPlayer = point_distance(x, y,  oPlayer.x, oPlayer.y)
		//Check to see if player is within ogre trigger range
		if(distToPlayer > slamRange){
			if(!place_meeting(x+getEnemyMovespeedFactor(lengthdir_x(xSpeed, dir)),y, oWall)){
				x += getEnemyMovespeedFactor(lengthdir_x(xSpeed, dir))
			}
			if(!place_meeting(x, y + getEnemyMovespeedFactor(lengthdir_y(ySpeed, dir)), oWall)){
				y += getEnemyMovespeedFactor(lengthdir_y(ySpeed, dir))
			}
		}
		//Swap the state into charging if player gets close enough
		else{
			
			
			//Change to charging state
			state = "charging"	
			sprite_index = sEnemyOgreChargeState
			image_index = 0
			
			//Set a timer to transition to the cooldown state
			alarm_set(4,chargeAnimationTime)
			
			
			//slamID = instance_create_layer(x, y, "Instances", oOgreSlam)
		}
		if( lengthdir_x(xSpeed, dir) > 0) {
			image_xscale = 1	
		}
		else {
			image_xscale = -1	
		}
	}
}

if(state="charging"){
	//Increment the state of the club depending on the stage of the swing
	
	//During the first stage, the ogre rotates his club up 40 degrees
	if(alarm_get(4) > chargeAnimationTime - swingInterval) {
		var angleIncrement = (swingInterval) / 100
		weaponYCurr -= (5 / (swingInterval))
	}
	else { //During the second stage, the ogre swings his club down to the floor
		var angleIncrement = -((chargeAnimationTime - swingInterval)/7)
		weaponYCurr += (5 / (chargeAnimationTime - swingInterval))
		
		
	}
	
	weaponAngle += (angleIncrement * sign(image_xscale))
	
}

if(state = "cooldown"){
	weaponAngle = 0
}