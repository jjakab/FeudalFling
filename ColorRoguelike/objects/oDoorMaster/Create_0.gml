
//Create a hitbox and pair it to this door
hitbox = instance_create_depth(x,y,depth,oDoorHitbox)
with(hitbox) {
	pairedObj = other
}

//Variable for whether this has been broken and whether it has been activated
roomEmpty = false
broken = false
activated = false


//Declare the room that this door leads to - this will be overwritten by child object
targetRoom = rBasicRoom1 //