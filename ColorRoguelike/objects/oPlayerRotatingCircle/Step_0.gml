

x = oPlayer.x + (radiusFromPlayer * cos(currentAngle))
y = oPlayer.y + (radiusFromPlayer * sin(currentAngle))

//Making circle fade out to create effect
image_alpha = image_alpha - (1 / lifespan)

if (image_alpha <= 0) instance_destroy()
