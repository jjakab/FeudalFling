// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lightningInvisible(id){
	
	//This is a recursive function that makes lightning invisible when it hits the shock collar
	with(id) {
		if(nextStrike != noone) {
			lightningInvisible(nextStrike)
		}
		else {
			isVisible = false	
		}
	}


}