//If this collides with the player
if(instance_place(x, y, oPlayer)){
	
	//Only damage player if they have not yet been damaged
	if(canDamage = true){
		global.playerHealth -= 10
		visuallyDamagePlayer()
		canDamage = false
	}

}