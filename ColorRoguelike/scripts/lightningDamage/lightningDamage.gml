// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lightningDamage(objectID){
	if(canDamage) {
		if(active) {
			var currID = findMainLightningParent(id)
			//Need to add active damage frames here
			if(currID.canDamage = true){
				
				//If the shock collar is active, use it
				if(oPlayer.shockCollarActive = true) {
					
					//Make lightning invisible from point it hit player
					lightningInvisible(id)
					
					with(oPlayer) {
			
						//Set the shock collar to inactive and set a timer to re-activate it
						shockCollarActive = false
						alarm_set(3,refreshTimer)
			
						//Find the nearest enemy
						pairedLightningObj = instance_nearest(x,y,oEnemyMaster)
			
						//If the distance to the nearest enemy is >64px (two lightnings), we won't chain lightning
						if(pairedLightningObj != noone) {
							if(point_distance(x,y,pairedLightningObj.x,pairedLightningObj.y) > 64) {
								pairedLightningObj = noone
					
								//We probably want to flag some visual effect for unchained lightning
							}
							else { //There is an enemy within range that we will pair to
								shockCollarLightning = true
							}
						}
						else { //There are no enemies alive 
							//We should put flag for the visual effect for unchained lightning here
						}
			
			
					}
					
				}
				
				else {
				
					damagePlayer(damage)
				}
				
				currID.canDamage = false
				currID.alarm[0] = noDamageWindow
			
			}
		}
	}
}