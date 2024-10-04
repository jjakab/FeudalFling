//If hurt timer is active, draw blended red, otherwise draw normally
if(alarm_get(11) > 0) {
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,1)
}
else {
	draw_self()
}

//Draw the ogre's weapon
draw_sprite_ext(weaponSprite,0,x + (weaponXCurr * sign(image_xscale)), y + weaponYCurr, image_xscale, image_yscale,weaponAngle,c_white,1)


//Now that the ogre is draw, we additionally draw the ZZ if he is in a cooldown state
//The x and y of the ZZs are variable - left/right is 50/50, and it'll move up and down
if(state == "cooldown") {
	var xMod = zzXModInitial * zzDrawLeft
	draw_sprite_ext(sEnemyOgreCooldown,0,x+xMod,y+zzDrawHeightMod,1,1,0,c_white,1)
}


