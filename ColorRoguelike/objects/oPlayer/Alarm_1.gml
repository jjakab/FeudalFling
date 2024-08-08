/// @description Wind essence

if(sqrt(sqr(xSpeed) + sqr(ySpeed)) > windEssenceSpeedThreshold) {
	windEssence = instance_create_depth(x,y,depth,oPlayerWind)
	with(windEssence) {
		xSpeed = other.xSpeed
		ySpeed = other.ySpeed
		sprite_index = other.sprite_index
		image_xscale = other.image_xscale
	}
}