//If the room is emptied, clear the walls
if(roomEmpty = false) {
	if(instance_number(oEnemyMaster) <= 0) {
		var collidingWalls = ds_list_create()
		instance_place_list(x,y,oWall,collidingWalls,false)
		for (i = 0; i < ds_list_size(collidingWalls); i++) {
			var instanceID = ds_list_find_value(collidingWalls,i)
			instance_destroy(instanceID)
		}
		roomEmpty = true
	}
}


if(broken = false) {
	if(place_meeting(x,y,oPlayer)) {
		broken = true
		
		//Should show door breaking here
	}
}

//If activated (by hitbox), go to target room
if(activated) {
	room_goto(targetRoom)	
}