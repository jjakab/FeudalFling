// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createRelicList(){
	var relics = ds_list_create()
	var objIndex = 0; //current object index to check
	//Go through all the objects (keep increasing obj_index until it doesn't exist)
	while (object_exists(objIndex)) {
		//Check if object is a relic and whether or not the player already owns it
		//TODO: Check if object is stackable, if so, make it available to the list
		if (object_get_parent(objIndex) == oRelicMaster && (is_undefined(ds_map_find_value(global.relicsOwned, objIndex)))) {
			ds_list_add(relics, object_get_name(objIndex)); //add to the list
			show_debug_message(object_get_name(objIndex))
		}
		objIndex++; //go to the next index
	}
	
	return relics
}