alarm_set(0, timeBetweenShots)

var arrow = instance_create_layer(x, y, "Instances", oArrowTrap)
arrow.direction = arrow_direction
arrow.speed = 3.5
arrow.image_angle = arrow_direction