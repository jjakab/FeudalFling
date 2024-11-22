// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lightningXScale(objToInteract){
	var iterator = 1
	if(collision_line(x, y, newx + lengthdir_x(sprite_width,image_angle), newy + lengthdir_y(sprite_width,image_angle), objToInteract, false, true) != noone){
		createNew = true
		while(instance_position(newx + lengthdir_x(iterator, image_angle), newy + lengthdir_y(iterator, image_angle), objToInteract) == noone){
			iterator += 1	
		}
		spriteRatio = iterator/sprite_width
	}
	return spriteRatio
}