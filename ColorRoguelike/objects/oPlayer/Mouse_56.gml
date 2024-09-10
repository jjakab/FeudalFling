/// @description Launch player in target direction
// You can write your code in this editor


if(mouseClicked=true) //a dash was being charged up
{
	//Check if a wind essence needs to be shot
	if(distance_to_point(mouse_x,mouse_y) > maxAimRange) {
		if(windEssence) {
			alarm_set(1,windEssenceDelay)
		}
	}
	
	var xMouseDistance = launchCoefficient * cos(degtorad(mouseAngle)) * min( maxAimRange,distance_to_point(mouse_x,mouse_y))
	var yMouseDistance = launchCoefficient * sin(degtorad(mouseAngle)) * min( maxAimRange,distance_to_point(mouse_x,mouse_y))
	xSpeed = -xMouseDistance / 50
	ySpeed = yMouseDistance / 50
	
	mouseClicked = false
	
	//Create a list of enemy instance IDs and set whether they've been damaged this charge to false
	
	ds_list_destroy(enemyHitList)
	enemyHitList = ds_list_create()
	
}
mouseClicked = false
moveDir = mouseAngle

