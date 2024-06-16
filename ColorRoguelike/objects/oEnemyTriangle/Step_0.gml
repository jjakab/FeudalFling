/// @description Move/rotate dependent on stage


if (moveStage = "1a") //move in a random direction with smooth increment/dexcrement
{
	//first determine a direction (in degrees) that we want to move

	//if we have not reached max speed, increment speed
	if(abs(xSpeed) < abs(cos(degtorad(moveDegree)) * stage1MaxSpeed) or abs(ySpeed) < abs(sin(degtorad(moveDegree)) * stage1MaxSpeed))
	{
		xSpeed = xSpeed + cos(degtorad(moveDegree)) * stage1IncrementSpeed
		ySpeed = ySpeed - sin(degtorad(moveDegree)) * stage1IncrementSpeed
	}
	else //if we have reached max speed, set a timer
	{
		moveStage = "1b"
		alarm_set(1,stage1StepDuration)
	}
}

else if(moveStage = "1c") //we need to decrement speed
{
	
	//we have not stopped moving
	if(abs(xSpeed) > abs(cos(degtorad(moveDegree)) * stage1IncrementSpeed) or abs(ySpeed) > abs(sin(degtorad(moveDegree)) * stage1IncrementSpeed))
	{
		xSpeed = xSpeed - cos(degtorad(moveDegree)) * stage1IncrementSpeed
		ySpeed = ySpeed + sin(degtorad(moveDegree)) * stage1IncrementSpeed
	}
	else // we've reached minimal speed
	{	
		//set speed to zero, go to stage 2a and randomize rotation direction
		xSpeed = 0
		ySpeed = 0
		moveStage = "2"
		if(irandom_range(1,2)=1) stage2RotIncrementSpeed = -stage2RotIncrementSpeed
	}
}

else if(moveStage = "2") //start rotating
{
	if(abs(rotSpeed) < stage2MaxRotSpeed)
	{
		rotSpeed = rotSpeed + stage2RotIncrementSpeed
	}
	else // we have reached max rotation speed
	{
		moveStage = "3"
	}
}

else if (moveStage = "3") //need to shoot projectiles
{
	
	if(not(alarm_get(3) > 0)) //if we are waiting for a bullet to be shot, do nothing
	{
		angleToPlayer = point_direction(x,y,oPlayer.x,oPlayer.y)  //determine direction of player relative to this enemy
	
		bulletsShot = 0
		shootingCurrentAngle = angleToPlayer - (sign(stage2RotIncrementSpeed) * arcRange / 2) //start shooting in the general direction of player, starting at one side of arc
		shootingIncrementAngle = arcRange / bulletsToShoot * sign(stage2RotIncrementSpeed) // increment direction is based off of which direction the triangle is rotating
	
		alarm_set(3,firingCooldownSteps) //wait specified number of steps, then shoot first bullet
	}
	
}

else if (moveStage = "4")
	if(abs(rotSpeed) > abs(stage2RotIncrementSpeed))
	{
		rotSpeed = rotSpeed - stage2RotIncrementSpeed
	}
	else // we have reached minimal rotation speed
	{
		rotSpeed = 0
		moveStage = "0"
		alarm_set(1,120)
	}

//move based on xSpeed and ySpeed
x = x + xSpeed
y = y + ySpeed
image_angle = image_angle + rotSpeed

event_inherited()













