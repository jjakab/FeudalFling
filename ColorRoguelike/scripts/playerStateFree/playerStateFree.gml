//Free player state, can move around
function playerStateFree(){
	//wall collision code, move player and check to see if they collide with any wall tile in grid
	y = y - (keyUp * moveSpeed)
	if(wallCollision(self, oRoomCreator.occupiedGrid) > 0){
		y = y +	(keyUp * moveSpeed)
	}

	x = x + (keyRight * moveSpeed)
	if(wallCollision(self, oRoomCreator.occupiedGrid) > 0){
		x = x - (keyRight * moveSpeed)
	}	

	//create rotating circle, then increment angle
	createPlayerRotatingCircle(rotatingCircleRadiusFromPlayer,rotatingCircleCurrentAngle,rotatingCircleLifespan)
	createPlayerRotatingCircle(rotatingCircleRadiusFromPlayer,(rotatingCircleCurrentAngle + 180 + 30) % 360,rotatingCircleLifespan) // looks awkward if it's exactly 180 degrees
	rotatingCircleCurrentAngle += rotatingCircleDegreesPerStep

	//if the player left clicks, perform an attack.
	if(mouse_check_button_pressed(mb_left) && attackTimer == 0){
		state = PLAYERSTATES.ATTACK
	}
}


//Checking to see if the player will get stuck in wall when they move
//if(tilemap_get_at_pixel(wallMapID, x + (keyRight * moveSpeed), y + (keyUp * moveSpeed)) == 0){
//	if(tilemap_get_at_pixel(wallMapID, x, y  + (keyUp * moveSpeed)) == 0){
//		if(tilemap_get_at_pixel(wallMapID, x + (keyRight*moveSpeed), y) == 0){
//			y = y - (keyUp * moveSpeed)
//			x = x + (keyRight * moveSpeed)
//		}
//	}
//}