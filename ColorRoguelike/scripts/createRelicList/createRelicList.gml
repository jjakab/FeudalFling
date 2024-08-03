// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createRelicList(){
	var relics = ds_list_create()
	var objIndex = 0; //current object index to check
	//Go through all the objects (keep increasing obj_index until it doesn't exist)

	while (object_exists(objIndex)) {
		if (object_get_parent(objIndex) == oRelicMaster) {
			ds_list_add(relics, objIndex); //add to the list
		}
		objIndex++; //go to the next index
	}
	
	return relics
}