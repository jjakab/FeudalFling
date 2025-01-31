event_inherited()

if(!place_meeting(x + getEnemyMovespeedFactor(xSpeed),y, oWall)){
	x += getEnemyMovespeedFactor(xSpeed)
}
else{
	xSpeed = -xSpeed
	x += getEnemyMovespeedFactor(xSpeed)
}
if(!place_meeting(x, y + getEnemyMovespeedFactor(ySpeed), oWall)){
	y += getEnemyMovespeedFactor(ySpeed)
}
else{
	ySpeed = -ySpeed
	y += getEnemyMovespeedFactor(ySpeed)
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

