function hazardHitPlayer(){

	//If this has not recently affected the player, we can proceed
	if(canDamage) {
		if(active) { //Proceed if this hazard is not in the charge state
			if((object_index = oAcidPool or object_index = oAcidPoolLarge) && (instance_number(oPlayer) >= 1)) { //If this is an acid pool, damage player	
				global.playerHealth -= damage
				visuallyDamagePlayer()
				canDamage = false
				alarm_set(0,noDamageWindow)
			}
			if(object_index = oSpikeTrap && (instance_number(oPlayer) >= 1)) {
				global.playerHealth -= damage
				visuallyDamagePlayer()
				canDamage = false
				alarm_set(0,noDamageWindow)
			}
			else if(object_index = oSnowTrap or object_index = oSnowTrapLarge){
				if(instance_number(oPlayer) >= 1) {
					oPlayer.xSpeed = oPlayer.xSpeed * (1-(oPlayer.fric * slowCoefficient))
					oPlayer.ySpeed = oPlayer.ySpeed * (1-(oPlayer.fric * slowCoefficient))
				}
			}
		}
	}
}