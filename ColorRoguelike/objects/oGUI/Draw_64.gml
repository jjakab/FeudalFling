draw_set_halign(fa_left)


//Draw the GUI banner first
draw_sprite_ext(sGUIBannerHealth,0,healthDrawStartX + bannerXOffset,healthDrawStartY + bannerYOffset,drawXScale,drawYScale,0,c_white,bannerAlpha)



//Loop through every heart
for (var i = 1; i <= numHearts; i++) {

	var heartType = ""
	
	//If health is less than this, draw an empty heart
	if(global.playerHealth <= (i - 1) * hpPerHeart) {
		heartType = "empty"
		draw_sprite_ext(sEmptyHeart,0,healthDrawStartX + (healthDrawXInterval * (i-1)),healthDrawStartY,drawXScale,drawYScale,0,c_white,1)
		
	}
	
	//Half heart
	else if (global.playerHealth <= (i * hpPerHeart - 2)) {
		heartType = "half"
		draw_sprite_ext(sHalfHeart,0,healthDrawStartX + (healthDrawXInterval * (i-1)),healthDrawStartY,drawXScale,drawYScale,0,c_white,1)
	}
	
	//Full heart
	else if (global.playerHealth >= (i * hpPerHeart)) {
		heartType = "full"
		draw_sprite_ext(sFullHeart,0,healthDrawStartX + (healthDrawXInterval * (i-1)),healthDrawStartY,drawXScale,drawYScale,0,c_white,1)
	}
}

//Draw gold banner
draw_sprite_ext(sGUIBannerGold,0,goldDrawStartX + bannerXOffset,goldDrawStartY + bannerYOffset,drawXScale,drawYScale,0,c_white,bannerAlpha)

//Drawing gold owned
draw_sprite_ext(sGoldOwned,0,goldDrawStartX, goldDrawStartY, drawXScale,drawYScale,0,c_white,1)
var goldAmount = string(global.goldOwned)
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_font(fPixelFont24)
draw_text(goldAmountDrawStartX - 3, goldDrawStartY-7, "x " + goldAmount)


// Code to draw relics in GUI - now disabled
/* 
itemsOwned = ds_map_keys_to_array(global.relicsOwned)
var spr
for (var j = 0; j < array_length(itemsOwned); j++) {
	var objName = itemsOwned[j]
	var objIndex = asset_get_index(objName)
	spr = object_get_sprite(objIndex)
	draw_sprite_ext(spr,0,relicDrawStartX + (relicDrawXInterval * (j - 1)),relicDrawStartY,drawXScale,drawYScale,0,c_white,1)
	
	//Check if this is stackable, and if so draw the # of stacks
	if(asset_has_tags(itemsOwned[j],"stackable")) {
		var numStacks = ds_map_find_value(global.relicsOwned,itemsOwned[j])
		draw_set_color(c_yellow)
		draw_set_valign(fa_top)
		draw_set_font(fPixelFont12)
		draw_text(relicDrawStartX + (relicDrawXInterval * (j - 1)) + 20, relicDrawStartY + 8,string(numStacks))
	}
}
*/