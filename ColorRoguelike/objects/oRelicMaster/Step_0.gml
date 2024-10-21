//If the player collides with any relic, break it
if(place_meeting(x, y, oPlayer)){
	
	//If the player has enough gold, they purchase the relic
	if(playerCanPurchaseRelic()) {
		show_debug_message("Relic hit")
		//Check if the player currently holds any of this type of relic, and add 1 to the relics owned mapping
		var objName = object_get_name(object_index)
	
		//Certain relics are consolidated after being picked up
		if(objName == "oRelicHpEmpty") objName = "oRelicHpBoost"
	
		var relicTypeHeld = ds_map_find_value(global.relicsOwned, objName)
		if(is_undefined(relicTypeHeld)){
			ds_map_add(global.relicsOwned, objName, 1)
		}
		else{
			ds_map_replace(global.relicsOwned, objName, relicTypeHeld + 1)
		}
		global.goldOwned -= goldCost
		instance_destroy()
	}
	else {
		//If the player doesn't have enough gold, set the visual indicator
		alarm_set(1,drawInsufficientGoldTimer)
		bottomSprite = sShopCaptionBottomRed
	}
}
