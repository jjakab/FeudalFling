//Reset the alarm every time it shoots
alarm_set(0, timeBetweenShots)
//Create a damaging arrow
var arrow = instance_create_layer(x, y, "Instances", oArrowTrap)
arrow.direction = image_angle
arrow.speed = 3.5 * global.trapSpeed
arrow.image_angle = image_angle


