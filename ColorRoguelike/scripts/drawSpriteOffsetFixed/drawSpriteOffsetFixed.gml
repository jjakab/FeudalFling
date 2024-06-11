// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawSpriteOffsetFixed(){

	/// @arg sprite,subimg,x,y,xscale,yscale,rot,color,alpha,origin_x,origin_y
 
	var
	_x_offset = (sprite_get_xoffset(argument0) - argument9) * argument4,
	_y_offset = (sprite_get_yoffset(argument0) - argument10) * argument5;
 
	draw_sprite_ext(
	    argument0,
	    argument1,
	    (argument2 - 1) + lengthdir_x(_x_offset,argument6) + lengthdir_x(_y_offset,argument6 - 90),
	    (argument3 - 1) + lengthdir_y(_x_offset,argument6) + lengthdir_y(_y_offset,argument6 - 90),
	    argument4,
	    argument5,
	    argument6,
	    argument7,
	    argument8
	);

}