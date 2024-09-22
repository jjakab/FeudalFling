/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)){
	if(place_meeting(x,y, oPlayer) && (sprite_index != sSpikeTrapAttack)){
		sprite_index = sSpikeTrapAttack
		image_index = 0	
		alarm_set(0, irandom_range(220,250))
	}
	if(sprite_index = sSpikeTrapAttack && image_index >= image_number){
		image_speed = 0
		active = true
	}
}
