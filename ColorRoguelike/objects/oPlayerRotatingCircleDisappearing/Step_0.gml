/// @description Insert description here

x = oPlayer.x + (radiusFromPlayer * cos(currentAngle))
y = oPlayer.y + (radiusFromPlayer * sin(currentAngle))

image_alpha = image_alpha - (.01 * (100 / lifespan))

if (image_alpha <= 0) instance_destroy()
