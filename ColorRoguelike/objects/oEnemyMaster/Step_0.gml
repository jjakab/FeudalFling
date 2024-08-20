/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, oPlayer)){
	show_debug_message("Enemy hit")
	hp = hp - oPlayer.attackDamage
	if(hp <= 0){
		instance_destroy()	
		//Create tombstone animation
		instance_create_layer(x, y, "Instances",oTombstone)
		//Add gold to player 
		global.goldOwned += goldDropped
	}
}
