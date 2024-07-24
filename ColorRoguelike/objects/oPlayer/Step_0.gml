/// @description Movement, collision checks, etc.

//check keyboard presses
/*
keyRight = keyboard_check(ord("D")) - keyboard_check(ord("A"))
keyUp = keyboard_check(ord("W")) - keyboard_check(ord("S"))

switch (state){
	case PLAYERSTATES.FREE: playerStateFree(); break;
	case PLAYERSTATES.ATTACK: playerStateAttack(); break;
}*/


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

if(place_meeting(x,y,oEnemyProjectileMaster))
{
	projectile = instance_place(x,y,oEnemyProjectileMaster)
	with(projectile)
	{
		instance_destroy()
		other.playerHealth -= damage
	}
	//ADD CODE FOR PLAYER TAKING DAMAGE
	damaged = true
	alarm_set(0,damageVisualWindow)
	
}

if(playerHealth <= 0){
	instance_destroy()
	instance_create_layer(x, y, "Instances", )
}




