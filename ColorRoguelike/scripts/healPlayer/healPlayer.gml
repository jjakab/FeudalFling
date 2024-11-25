// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function healPlayer(hpRestore, hpMaxIncrease){
	if(global.healthGain = true){
		global.maxPlayerHealth += hpMaxIncrease
		global.playerHealth += min(global.maxPlayerHealth - global.playerHealth, hpRestore)	
	}
	
	//If the player has blood battery, heal
	if(bloodBatteryActive) {
		instance_create_depth(x,y,depth+1,oFriendlyExplosion)	
	}
}