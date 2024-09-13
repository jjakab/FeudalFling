//If hurt timer is active, draw blended red, otherwise draw normally
if(alarm_get(11) > 0) {
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,1)
}
else {
	draw_self()
}

//Now that the ogre is draw, we additionally draw the ZZ if he is in a cooldown state
if(state == "cooldown") {
	var xMod = zzXModInitial * zzDrawLeft
	draw_sprite_ext(sEnemyOgreCooldown,0,x+xMod,y+zzDrawHeightMod,1,1,0,c_white,1)
}