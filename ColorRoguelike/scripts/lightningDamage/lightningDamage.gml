// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lightningDamage(objectID){
	if(canDamage) {
		if(active) {
			var currID = findMainLightningParent(id)
			//Need to add active damage frames here
			if(currID.canDamage = true){
				damagePlayer(damage)
				currID.canDamage = false
				currID.alarm[0] = noDamageWindow
			}
		}
	}
}