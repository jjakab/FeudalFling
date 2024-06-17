/// @description Movement, collision checks, etc.

//check keyboard presses
keyRight = keyboard_check(ord("D")) - keyboard_check(ord("A"))
keyUp = keyboard_check(ord("W")) - keyboard_check(ord("S"))

//update x position and y position based on movement
x = x + (keyRight * moveSpeed)
y = y - (keyUp * moveSpeed)

//create rotating circle, then increment angle
createPlayerRotatingCircle(rotatingCircleRadiusFromPlayer,rotatingCircleCurrentAngle,rotatingCircleLifespan)
createPlayerRotatingCircle(rotatingCircleRadiusFromPlayer,(rotatingCircleCurrentAngle + 180 + 30) % 360,rotatingCircleLifespan) // looks awkward if it's exactly 180 degrees
rotatingCircleCurrentAngle += rotatingCircleDegreesPerStep



