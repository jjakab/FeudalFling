event_inherited()

//If this is elite, draw a crown on its head

if(elite) {
	
	var yDraw = bbox_top - 1

	draw_sprite_ext(sCrown,0,x,yDraw,abs(image_xscale),abs(image_yscale),0,c_white,1)
}