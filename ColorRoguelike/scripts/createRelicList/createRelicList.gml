//Script to create a list of all obtainable relics to populate the Shop
function createRelicList(){
	var relics = ds_list_create()
	
	//Newer method of pulling all relics using tags
	var allRelics = tag_get_asset_ids("relic", asset_object);
	for(i = 0; i < array_length(allRelics); i++){
		if(object_is_ancestor(allRelics[i],oRelicMaster)) {
			//This throws an error here but doesn't cause any errors as long as the asset we're receiving is an object
			//This means that if we tag anything that isn't an object as a Relic it will crash, but will be fine otherwise
			currName = object_get_name(allRelics[i])
			//Check to see if relic is owned
			if(is_undefined(ds_map_find_value(global.relicsOwned, currName))){
				ds_list_add(relics, allRelics[i]); 
			}
			//If relic is not owned but stackable, add it anyway
			else if(asset_has_any_tag(allRelics[i], "stackable")){
				ds_list_add(relics, allRelics[i]);
			}
		}
	}
	
	//Below comment is another viable solution, talk with Jonah
	
	//Go through all the objects (keep increasing obj_index until it doesn't exist)
	//var objIndex = 0; //current object index to check
	//while (object_exists(objIndex)) {
	//	//Check if object is a relic and whether or not the player already owns it
	//	//TODO: Check if object is stackable, if so, make it available to the list
	//	if (object_get_parent(objIndex) == oRelicMaster && (is_undefined(ds_map_find_value(global.relicsOwned, object_get_name(objIndex))))) {
	//		ds_list_add(relics, objIndex); //add to the list
	//	}
	//	//else if(asset_has_any_tag(objIndex, "stackable", asset_object)){
	//	//	ds_list_add(relics, objIndex)
	//	//}
	//	objIndex++; //go to the next index
	//}
	
	return relics
}