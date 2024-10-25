// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerCanPurchaseRelic(){
	
	//If the player has a credit card, they can always purchase a relic
	if(global.creditCardOwned){
		return true;
	}

	if(goldCost <= global.goldOwned) {
		return true
	}
	else {
		return false	
	}
}