if(instance_exists(oPlayer) && place_meeting(x, y, oPlayer) && consumable){
	healPlayer(4, 0)	
	instance_destroy()
}