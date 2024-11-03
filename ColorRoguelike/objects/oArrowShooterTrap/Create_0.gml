

//Slightly randomize the timing of the arrow shots
timeLow = 200
timeHigh = 300

timeBetweenShots = irandom_range(timeLow, timeHigh) * global.trapSpeed
alarm_set(1, timeBetweenShots)

//Starts off in an idle animation
image_speed = 0
