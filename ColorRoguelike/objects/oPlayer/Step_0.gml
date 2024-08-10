//Update arrow accordingly if movement is being buffered
if(mouseClicked)
{
	mouseAngle = point_direction(x,y,mouse_x,mouse_y)
}

//Decrement speed based on friction
xSpeed = xSpeed * (1-fric)
ySpeed = ySpeed * (1-fric)

//Move and change direction if player runs into a wall
if(!place_meeting(x + xSpeed,y, oWall)){
	x += xSpeed
}
else{
	xSpeed = -xSpeed
	x += xSpeed
}
if(!place_meeting(x, y + ySpeed, oWall)){
	y += ySpeed
}
else{
	ySpeed = -ySpeed
	y += ySpeed
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
unstick()

groundHitbox.x = x
groundHitbox.y = y

//If the player ran into a projectile, act accordingly
if(place_meeting(x,y,oEnemyProjectileMaster))
{
	projectile = instance_place(x,y,oEnemyProjectileMaster)
	projDamage = projectile.damage;
	with(projectile)
	{
		instance_destroy();
	}
	if(firstHitNegate = true){
		firstHitNegate = false
	}
	else{
		global.playerHealth -= projDamage
		visuallyDamagePlayer()
	}
}

//Check if the ground hitbox is colliding with any 
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
