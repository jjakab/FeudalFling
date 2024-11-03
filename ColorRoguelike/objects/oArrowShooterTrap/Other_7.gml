//Depending on the current sprite, take a different action

//If we were in bow pullback, we start playing the fire animation
if(sprite_index = sBowPullback) {
	
	sprite_index = sBowShoot
	image_index = 0
	image_speed = 16 * global.trapSpeed
	
}

//If we were in the shooting motion, create an arrow and go to loading animation after a short pause (alarm 2)
else if (sprite_index = sBowShoot) {
	
	sprite_index = sBowIdle //Set to the idle animation until reload begins
	image_index = 0
	image_speed = 0 //This will be set to positive in alarm 2
	
	alarm_set(2,90 * global.trapSpeed)
	
	
	//Shoot an arrow
	var arrow = instance_create_layer(x + cos(degtorad(image_angle)) * 10, y + sin(degtorad(image_angle)) * 10, "Instances", oArrowTrap)
	arrow.direction = image_angle
	arrow.speed = 2.5 * global.trapSpeed
	arrow.image_angle = image_angle
}

//If we were loading the bow, we go to the pullback animation (paused) and set the alarm to fire
else if (sprite_index = sBowLoading) {
	sprite_index = sBowPullback
	image_index = 0
	image_speed = 0
	
	timeBetweenShots = irandom_range(timeLow, timeHigh) * global.trapSpeed
	alarm_set(1, timeBetweenShots)
	
}