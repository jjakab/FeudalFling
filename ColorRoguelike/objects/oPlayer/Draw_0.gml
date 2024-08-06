/// @description Insert description here
if(damaged = false)
{
	draw_self()	
}
else
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,1)
}

if(mouseClicked)
{
	draw_set_color(c_white)
	draw_arrow(x,y,x-cos(degtorad(mouseAngle)) * min(maxAimRange,distance_to_point(mouse_x,mouse_y)),y+sin(degtorad(mouseAngle)) * min(maxAimRange,distance_to_point(mouse_x,mouse_y)),10)	
}

//Drawing player health
/*
var bar_width = 16;
var bar_height = 4;
var bar_x = x - bar_width / 2;
var bar_y = y - sprite_height / 2 - bar_height - 2;
draw_set_color(c_black)
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);
var hp_percentage = global.playerHealth / global.maxPlayerHealth;
draw_set_color(c_green)
draw_rectangle(bar_x, bar_y, bar_x + bar_width * hp_percentage, bar_y + bar_height, false);