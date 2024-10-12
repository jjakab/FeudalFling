function spawnStatSelection(){

	var xLoc = (room_width / 2) - (sprite_get_width(sHealthBanner) / 2)

	instance_create_depth(xLoc,60,-1000,oBannerHealth)
	instance_create_depth(xLoc,100,-1000,oBannerSpeed)
	
}