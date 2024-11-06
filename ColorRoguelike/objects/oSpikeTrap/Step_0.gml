
if(instance_exists(oPlayer)){
	if(place_meeting(x,y, oPlayer) && starting = false){
		image_index = 0	
		image_speed = global.trapSpeed
		starting = true
		alarm_set(1, irandom_range(220,250))
	}
	if(image_index >= image_number){
		image_speed = 0
		active = true
	}
}
