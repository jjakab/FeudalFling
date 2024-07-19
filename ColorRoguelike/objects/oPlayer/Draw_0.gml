/// @description Insert description here
if(damaged = false)
{
	draw_self()	
}
else
{
	draw_sprite_ext(sPlayerTemporary,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,1)
}

if(mouseClicked)
{

	draw_arrow(x,y,x-cos(degtorad(mouseAngle)) * min(maxAimRange,distance_to_point(mouse_x,mouse_y)),y+sin(degtorad(mouseAngle)) * min(maxAimRange,distance_to_point(mouse_x,mouse_y)),10)	
}
