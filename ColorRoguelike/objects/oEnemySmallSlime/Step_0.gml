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
if(sprite_index = sEnemySmallSlime){
	if(image_index >= startHopFrame && image_index <= stopHopFrame){
		hopping = true	
	}
	else{
		hopping = false	
	}
}
//If slime should be hopping, move towards player
if(hopping){
	if(instance_exists(oPlayer)){
		hopSpeed = random_range(0.7,0.9)
		//Uses "solid" objects to path around and get to player
		mp_potential_step(oPlayer.x, oPlayer.y, hopSpeed, false)	
	}
}