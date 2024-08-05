//If the player collides with any relic, break it
if(place_meeting(x, y, oPlayer)){
	show_debug_message("Relic hit")
	//Check if the player currently holds any of this type of relic, and add 1 to the relics owned mapping
	var relicTypeHeld = ds_map_find_value(global.relicsOwned, object_index)
	if(is_undefined(relicTypeHeld)){
		ds_map_add(global.relicsOwned, object_index, 1)
	}
	else{
		ds_map_replace(global.relicsOwned, object_index, relicTypeHeld + 1)
	}
	
	instance_destroy()	
}
