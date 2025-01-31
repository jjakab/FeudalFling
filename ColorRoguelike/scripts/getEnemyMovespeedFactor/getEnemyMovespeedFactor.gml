// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getEnemyMovespeedFactor(argument0){

	var temp = 1
	
	if(waxCandled){
		temp = 0.85
	}
	
	return temp * argument0

}