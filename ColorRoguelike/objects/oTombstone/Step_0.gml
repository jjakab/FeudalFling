
//If this is robbable and the player has the corresponding relic, rob it
if(instance_place(x, y, oPlayer) && array_contains(relicsOwned, "oTombRaider") && robbable = true){
	gainGold(goldGiven)
	robbable = false
	sprite_index = sTombstone
	
	//If there is a visual effect for robbing a tombstone it should be here
}