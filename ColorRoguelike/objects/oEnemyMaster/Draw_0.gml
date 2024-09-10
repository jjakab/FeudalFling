//Health bar code if desired
//var bar_width = 16;
//var bar_height = 4;
//var bar_x = x - bar_width / 2;
//var bar_y = y - sprite_height / 2 - bar_height - 2;
//draw_set_color(c_green)
//draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);
//var hp_percentage = hp / max_hp;
//draw_set_color(c_black)
//draw_rectangle(bar_x, bar_y, bar_x + bar_width * hp_percentage, bar_y + bar_height, true);

//If hurt timer is active, draw blended red, otherwise draw normally
if(alarm_get(11) > 0) {
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,1)
}
else {
	draw_self()
}

