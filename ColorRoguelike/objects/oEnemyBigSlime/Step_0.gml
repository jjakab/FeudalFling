event_inherited()

if(!place_meeting(x + xSpeed,y, oWall)){
	x += xSpeed
}
else{
	xSpeed = -xSpeed
	x += xSpeed
}
if(!place_meeting(x, y + ySpeed, oWall)){
	y += ySpeed
}
else{
	ySpeed = -ySpeed
	y += ySpeed
}
	
//Orient to face the correct direction
if(xSpeed > 0) {
	image_xscale = 1	
}
else {
	image_xscale = -1	
}
	
//Once we are re-oriented, we need to move outside of a wall (since flipping the sprite may have put us inside one)
unstick()

