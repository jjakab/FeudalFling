event_inherited()

//Set active to true always because we are doing the damage check in oMainLightningStrike
active = true 
//The image angle was passed to this via a struct as 'index' - first we set the image_angle to index
image_angle = index

//Start off by assuming we need to create a new lightning strike at the end of this one
mask_index = sLightningCreationHitbox

var createNew = true
if(creatingInstance = "enemy") if(place_meeting(x,y,oWall)) createNew = false //If this is touching a wall and was created by a wizard, it ends
if(creatingInstance = "tower") if(place_meeting(x,y,oTeslaTowerSecondary)) createNew = false //If this is touching a tesla tower and was created by a tower, it ends
if(x > room_width or x < 0) createNew = false //If this is out of x-bounds, it ends
if(y > room_height or y < 0) createNew = false //If this is out of y-bounds, it ends

mask_index = sprite_index

var temp = creatingInstance

//If we need to create a new lightning strike, do so
if(createNew) {
	//This passes image_angle in a struct as 'index'
	var newx = x+lengthdir_x(sprite_width,image_angle)
	var newy = y + lengthdir_y(sprite_width,image_angle)
	nextStrike = instance_create_layer(newx, newy, layer, oLightningStrike, { index : image_angle, parentID : id, creatingInstance: temp })	
}