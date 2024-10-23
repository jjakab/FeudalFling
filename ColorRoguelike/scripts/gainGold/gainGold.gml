// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gainGold(goldGained){
	
	//Multiply gold earned by the multiplier
	global.goldOwned += ceil(goldGained * global.goldGain)
}