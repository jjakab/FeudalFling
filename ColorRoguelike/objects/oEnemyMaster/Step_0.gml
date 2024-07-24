/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, oPlayer)){
	show_debug_message("Enemy hit")
	hp = hp - oPlayer.attackDamage
	if(hp <= 0){
		instance_destroy()	
		instance_create_layer(x, y, "Instances",oTombstone)
	}
}
