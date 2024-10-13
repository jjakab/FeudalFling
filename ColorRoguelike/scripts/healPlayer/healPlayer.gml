// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function healPlayer(hpRestore, hpMaxIncrease){
	if(global.healthGain = true){
		global.playerHealth += min(global.maxPlayerHealth - global.playerHealth, hpRestore)	
		global.maxPlayerHealth += hpMaxIncrease
	}
}