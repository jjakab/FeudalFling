//Update arrow accordingly if movement is being buffered
if(mouseClicked)
{
	mouseAngle = point_direction(mouseClickedX,mouseClickedY,mouse_x,mouse_y)
}

//Decrement speed based on friction
xSpeed = xSpeed * (1-fric)
ySpeed = ySpeed * (1-fric)

with(groundHitbox) {
	var startingX = x
	var startingY = y
	
	var hitboxXSpeed = other.xSpeed
	var hitboxYSpeed = other.ySpeed
	
	if(!place_meeting(x + other.xSpeed,y, oWall)){
		x += other.xSpeed
	}
	else{
		other.xSpeed = -other.xSpeed
		x += other.xSpeed
	}
	
	other.x += (x - startingX)
	
	if(!place_meeting(x, y + other.ySpeed, oWall)){
		y += other.ySpeed
	}
	else{
		other.ySpeed = -other.ySpeed
		y += other.ySpeed
	}
	
	other.y += (y - startingY)
	
}

//Set sprite direction based on xSpeed
if(xSpeed > 0) image_xscale = 1
else image_xscale = -1

//Based on the speed of the player, change the player state and image speed
var totSpeed = sqrt(sqr(xSpeed) + sqr(ySpeed))
if(totSpeed > speedIdleThreshold) {
	if(state = "still") { //If player was still, set player to running
		sprite_index = sPlayerRunNew
		image_index = 0
		state = "running"
	}
	image_speed = totSpeed * imageSpeedCoefficient
}
else { //If we are not already in the idle state, go to idle state
	if(state = "running") {
		sprite_index = sPlayerIdleNew
		image_index = 0
		state = "still"
	}
	image_speed = 1
}

//Unstick in case changing/flipping the sprite put the player in a wall
with(groundHitbox) {
	startingX = x
	startingY = y
	
	unstick()
	
	other.x += (x - startingX)
	other.y += (y - startingY)
}

groundHitbox.x = x
groundHitbox.y = y

//Check if the ground hitbox is colliding with any hazards
with(oPlayerGroundHitbox) {
	
	//Create list of hazards that the ground hitbox is colliding with
	var collisionInstances = ds_list_create()
	var collisions = instance_place_list(x,y,oGroundHazardMaster,collisionInstances,false)
	for (i = 0; i < ds_list_size(collisionInstances); i++) {
		var instanceID = ds_list_find_value(collisionInstances,i)
		with(instanceID) {
			hazardHitPlayer()
		}
	}
	
	ds_list_destroy(collisionInstances)
}

//Die if health is zero
if(global.playerHealth <= 0){
	instance_destroy()
	instance_create_layer(x, y, "Instances", oTombstone)
}

lightningHit = instance_place(x, y, oLightningMaster)
if(lightningHit != noone){
	with(lightningHit){
		lightningDamage(id)	
	}
}