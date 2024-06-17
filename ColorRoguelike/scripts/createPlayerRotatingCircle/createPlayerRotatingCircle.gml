// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createPlayerRotatingCircle(){
	
	var tempRadiusFromPlayer = argument0
	var tempCurrentAngle = argument1
	var tempLifespan = argument2
	
	var xPos = oPlayer.x + tempRadiusFromPlayer * (cos(tempCurrentAngle))
	var yPos = oPlayer.y + tempRadiusFromPlayer * (sin(tempCurrentAngle))
	
	newCircle = instance_create_depth(xPos,yPos,0,oPlayerRotatingCircle)
	with(newCircle)
	{
		radiusFromPlayer = argument0
		currentAngle = argument1
		lifespan = argument2
	}
	
}