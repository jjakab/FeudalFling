// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unstick(){

	if(place_meeting(x,y,oWall)) {
		wall = instance_place(x,y,oWall)
		angle = point_direction(wall.x + wall.sprite_width/2,wall.y+wall.sprite_height/2,x,y)
	
		while (place_meeting(x,y,wall))  {
			x = x + sign(cos(degtorad(angle)))
			y = y - sign(sin(degtorad(angle)))
		}
	}

}