function spawnStatSelection(){

	var xLoc = (room_width / 2) - (sprite_get_width(sHealthBanner) / 2)
	var doorInstance = instance_find(oDoorMaster, 0)
	var yLoc = doorInstance.y + 50
	
	instance_create_depth(xLoc,yLoc,-1000,oBannerHealth)
	yLoc += 40
	instance_create_depth(xLoc,yLoc,-1000,oBannerSpeed)
	yLoc += 40
}