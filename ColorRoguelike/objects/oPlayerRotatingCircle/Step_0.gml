/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x + (radiusFromPlayer * cos(currentAngle))
y = oPlayer.y + (radiusFromPlayer * sin(currentAngle))

//Making circle fade out to create effect
image_alpha = image_alpha - (1 / lifespan)

if (image_alpha <= 0) instance_destroy()