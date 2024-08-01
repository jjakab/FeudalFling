// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hazardHitPlayer(){

	//If this has not recently affected the player, we can proceed
	if(canDamage) {
		if(active) { //Proceed if this hazard is not in the charge state
			if(object_index = oAcidPool && (instance_number(oPlayer) >= 1)) { //If this is an acid pool, damage player	
				oPlayer.playerHealth = oPlayer.playerHealth - damage
				visuallyDamagePlayer()
				canDamage = false
				alarm_set(0,noDamageWindow)
			}
			else if(object_index = oSnowTrap){
				if(instance_number(oPlayer) >= 1) {
					oPlayer.xSpeed = oPlayer.xSpeed * (1-(oPlayer.fric * slowCoefficient))
					oPlayer.ySpeed = oPlayer.ySpeed * (1-(oPlayer.fric * slowCoefficient))
				}
			}
		}
	}
}