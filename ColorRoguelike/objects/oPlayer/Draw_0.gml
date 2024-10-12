/// @description Draw player and arrow
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
	
	//Draw a circle where the mouse was clicked no matter what
	draw_set_color(c_yellow)
	draw_circle(mouseClickedX,mouseClickedY,5,false)
	
	//Check if the dash condition is satisfied before setting the arrow to green
	if(((abs(xSpeed) < maxSpeedToRelaunch) and (abs(ySpeed) < maxSpeedToRelaunch)) //Dash speed is below a threshold
	or (alarm_get(2) <= 0)) {
		draw_set_color(c_green)
	}
	else {
		draw_set_color(c_red)	
	}
	
	//Based on the aim distance, draw an arrow
	var mouseDistance = point_distance(mouse_x,mouse_y,mouseClickedX,mouseClickedY)
	draw_arrow(x,y,x-cos(degtorad(mouseAngle)) * min(maxAimRange,mouseDistance),y+sin(degtorad(mouseAngle)) * min(maxAimRange,mouseDistance),10)	
}