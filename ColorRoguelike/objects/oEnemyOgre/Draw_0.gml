//If hurt timer is active, draw blended red, otherwise draw normally
var drawColor = c_white

if(alarm_get(11) > 0) {
	drawColor = c_red
}


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,drawColor,1)

//Draw the ogre's weapon
draw_sprite_ext(weaponSprite,0,x + (weaponXCurr * sign(image_xscale)), y + weaponYCurr, image_xscale, image_yscale,weaponAngle,drawColor,1)

//Additional effects based on ogre state

//Draw one exclamation at the beginning of the charge state
if(state=="charging") {
	draw_sprite_ext(sEnemyOgreExclamation,0,x - (8 * image_xscale), y - 15,1,1,0,c_white,1)
}

//Now that the ogre is draw, we additionally draw the ZZ if he is in a cooldown state
//The x and y of the ZZs are variable - left/right is 50/50, and it'll move up and down
else if(state == "cooldown") {
	var xMod = zzXModInitial * zzDrawLeft
	draw_sprite_ext(sEnemyOgreCooldown,0,x+xMod,y+zzDrawHeightMod,1,1,0,c_white,1)
}

//Draw poison if applicable
if(poisoned) {
	draw_sprite(sPoisonDrop,0,x,(y - sprite_height/2))
}



