/// @description Movement, collision checks, etc.

//check keyboard presses
keyRight = keyboard_check(ord("D")) - keyboard_check(ord("A"))
keyUp = keyboard_check(ord("W")) - keyboard_check(ord("S"))

//show_debug_message(tilemap_get_at_pixel(wallMapID, x + (keyRight * moveSpeed), y))

//Checking to see if the player will get stuck in wall when they move
if(tilemap_get_at_pixel(wallMapID, x + (keyRight * moveSpeed), y + (keyUp * moveSpeed)) == 0){
	if(tilemap_get_at_pixel(wallMapID, x, y  + (keyUp * moveSpeed)) == 0){
		if(tilemap_get_at_pixel(wallMapID, x + (keyRight*moveSpeed), y) == 0){
			y = y - (keyUp * moveSpeed)
			x = x + (keyRight * moveSpeed)
		}
	}
}



//create rotating circle, then increment angle
createPlayerRotatingCircle(rotatingCircleRadiusFromPlayer,rotatingCircleCurrentAngle,rotatingCircleLifespan)
createPlayerRotatingCircle(rotatingCircleRadiusFromPlayer,(rotatingCircleCurrentAngle + 180 + 30) % 360,rotatingCircleLifespan) // looks awkward if it's exactly 180 degrees
rotatingCircleCurrentAngle += rotatingCircleDegreesPerStep



