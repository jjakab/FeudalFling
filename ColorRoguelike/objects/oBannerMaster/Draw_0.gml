draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.8) //Always draw self

if(alarm_get(0) <= 0) {
	
	
	//Loop through to max
	for (i = 1; i <= maxVal; i++) {
		
		
		
		
		
		
		var drawSprite = emptyNodeSprite //Start off by assuming this is an empty node
		
		//If the current val is higher than the iteration #, we draw a 'full' node instead
		if(currentVal >= i) {
			drawSprite = fullNodeSprite
		}
		
		//draw_sprite_ext(drawSprite,0,x + nodeInitialX + (nodeXIncrement * (i - 1)),y+nodeInitialY,image_xscale,image_yscale,0,c_white,0.8)
		
	}
	
}