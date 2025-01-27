event_inherited()

//If player touches slime, damage player, leave a damage gap so that they don't obliterate player hp
if(place_meeting(x, y, oPlayer) && canDamage = 0){
	damagePlayer(2)	
	canDamage = 90
}
//Tick down damage timer
if(canDamage != 0){
	canDamage -= 1	
}

//Check to make sure slime is in the hopping animation
if(sprite_index == sEnemySmallSlime){
	//We need to check this range because the image_index is floating point num, so it might not hit the exact startHopFrame number
	if(image_index >= startHopFrame && image_index <= (startHopFrame + 0.5)){
		//Start a path
		alarm_set(0,1)
	}
	if(image_index >= stopHopFrame && image_index <= (stopHopFrame + 0.5)){
		//path_index is -1 if there is no path currently being followed. 
		if(path_index != -1){
			path_end()	
		}
	}
}

//If slime should be hopping, move towards player
if(hopping){
	if(instance_exists(oPlayer)){
		//Uses "solid" objects to path around and get to player
		mp_potential_step(oPlayer.x, oPlayer.y, hopSpeed, false)	
	}
}

