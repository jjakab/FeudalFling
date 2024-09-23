draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha) //Always draw self

if(alarm_get(0) <= 0) {
	
	var drawX = drawStartX
	
	//Start drawing the upgraded stat # from the right side
	draw_set_halign(fa_right)
	
	//Loop through each digit in the upgradedDigitArr
	for (var i = 0; i < array_length(upgradedDigitArr); i++) {
		
		//Find the corresponding digit sprite
		var drawSprite = (ds_map_find_value(numSpritesMap,upgradedDigitArr[i]))
		draw_sprite_ext(drawSprite,0,drawX,drawY,image_xscale,image_yscale,image_angle,c_white,0.7) //Draw it
		
		//Decrement the draw location
		drawX -= (sprite_get_width(drawSprite) + 1)
		
	}
	
	//Draw the arrow
	drawSprite = arrowSprite
	draw_sprite_ext(drawSprite,0,drawX,drawY,image_xscale,image_yscale,image_angle,c_white,0.7) //Draw it
	drawX -= (sprite_get_width(drawSprite) + 1)
	
	
	//Loop through each digit in the currDigitArr
	for (var i = 0; i < array_length(currDigitArr); i++) {
		
		//Find the corresponding digit sprite
		var drawSprite = (ds_map_find_value(numSpritesMap,currDigitArr[i]))
		draw_sprite_ext(drawSprite,0,drawX,drawY,image_xscale,image_yscale,image_angle,c_white,0.7) //Draw it
		
		drawX -= (sprite_get_width(drawSprite) + 1)
		
	}
	
	
}