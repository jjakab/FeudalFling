//The charge state has ended - time to ZAP

//Change state
state = "zap"

//Freeze on the first frame
image_index = 0
image_speed = 0

//Set the timer for how long we'll be zapping
alarm_set(1,zapTime)

instance_create_layer(x,y,"FloorHazards",oMainLightningStrike, { index : angleToPaired, creatingInstance: "tower", spriteShrink: 1 })