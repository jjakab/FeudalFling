if(place_meeting(x, y, oPlayer)){
	show_debug_message("Relic hit")
	hp = hp - oPlayer.attackDamage
	if(hp <= 0){
		instance_destroy()	
		
	}
}
