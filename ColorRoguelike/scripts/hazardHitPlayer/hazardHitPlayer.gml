function hazardHitPlayer(){
	var relicsOwned = ds_map_keys_to_array(global.relicsOwned)
	//If this has not recently affected the player, we can proceed
	if(canDamage) {
		if(active) { //Proceed if this hazard is not in the charge state
			if((object_index = oAcidPool or object_index = oAcidPoolLarge) && (instance_number(oPlayer) >= 1)
			&& (!array_contains(relicsOwned, oAcidShoes))) { //If this is an acid pool, damage player	
				damagePlayer(damage)
				canDamage = false
				alarm_set(0,noDamageWindow)
			}
			if(object_index = oSpikeTrap && (instance_number(oPlayer) >= 1)) {
				damagePlayer(damage)
				canDamage = false
				alarm_set(0,noDamageWindow)
			}
			if(object_index = oEnemySlimeTrail and oPlayer.acidTrailCooldown = 0 and (!array_contains(relicsOwned, oAcidShoes))){
				damagePlayer(damage)	
				oPlayer.acidTrailCooldown = 90
			}
			if(object_index = oLightningStrike){
				var currID = findMainLightningParent(id)
				//Need to add active damage frames here
				if(currID.canDamage = true){
					damagePlayer(damage)
					currID.canDamage = false
					currID.alarm[0] = noDamageWindow
				}
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