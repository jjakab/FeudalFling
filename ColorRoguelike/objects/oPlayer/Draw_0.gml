/// @description Insert description here
draw_self()

draw_sprite(sBoomerang,0,x+30,y)

if(mouseClicked)
{

	draw_arrow(x,y,x-cos(degtorad(mouseAngle)) * min(maxAimRange,distance_to_point(mouse_x,mouse_y)),y+sin(degtorad(mouseAngle)) * min(maxAimRange,distance_to_point(mouse_x,mouse_y)),10)	
}
