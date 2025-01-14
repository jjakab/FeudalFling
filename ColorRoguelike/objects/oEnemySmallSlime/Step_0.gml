event_inherited()

if(place_meeting(x, y, oPlayer) && canDamage = 0){
	damagePlayer(2)	
	alarm[0] = -1
	alarm_set(0, 60)
	path_end()
	canDamage = 90
}

if(canDamage != 0){
	canDamage -= 1	
}