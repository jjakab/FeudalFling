/// @description Movement, collision checks, etc.

//check keyboard presses
keyRight = keyboard_check(ord("D")) - keyboard_check(ord("A"))
keyUp = keyboard_check(ord("W")) - keyboard_check(ord("S"))

/*switch (state){
	case PLAYERSTATES.FREE: playerStateFree(); break;
	case PLAYERSTATES.ATTACK: playerStateAttack(); break;
}*/

if(mouseClicked)
{
	mouseAngle = point_direction(x,y,mouse_x,mouse_y)
}


xSpeed = xSpeed * (1-fric)
ySpeed = ySpeed * (1-fric)

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



