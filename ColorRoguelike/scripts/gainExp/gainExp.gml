// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gainExp(){
	var expAmount = argument0
	oPlayer.currentExp += expAmount
	
	if (oPlayer.currentExp > oPlayer.nextLevel){
		oPlayer.currentExp -= oPlayer.nextLevel
		oPlayer.nextLevel = oPlayer.nextLevel * 1.5
		
	}
}