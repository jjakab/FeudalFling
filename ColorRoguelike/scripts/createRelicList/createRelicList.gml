//Script to create a map that contains item rarity -> relic object indexes
function createRelicList(){
	var commonRelics = ds_list_create()
	var uncommonRelics = ds_list_create()
	var rareRelics = ds_list_create()
	var cursedRelics = ds_list_create()
	var relicsMap = ds_map_create()
	//Newer method of pulling all relics using tags
	var allRelics = tag_get_asset_ids("relic", asset_object);
	for(i = 0; i < array_length(allRelics); i++){
		if(object_is_ancestor(allRelics[i],oRelicMaster)) {
			//This throws an error here but doesn't cause any errors as long as the asset we're receiving is an object
			//This means that if we tag anything that isn't an object as a Relic it will crash, but will be fine otherwise
			currName = object_get_name(allRelics[i])
			//Check to see if relic is owned or if relic is stackable
			if(is_undefined(ds_map_find_value(global.relicsOwned, currName)) || asset_has_any_tag(allRelics[i], "stackable")){
				//Adding all common relics
				if(asset_has_tags(allRelics[i], "common")){
					ds_list_add(commonRelics, allRelics[i])
				}
				//Adding all uncommon relics
				if(asset_has_tags(allRelics[i], "uncommon")){
					ds_list_add(uncommonRelics, allRelics[i])
				}
				//Adding all rare relics
				if(asset_has_tags(allRelics[i], "rare")){
					ds_list_add(rareRelics, allRelics[i])
				}
				if(asset_has_tags(allRelics[i], "cursed")){
					ds_list_add(cursedRelics, allRelics[i])	
				}
			}
		}
	}
	//Adding all relic lists to map
	ds_map_add(relicsMap, "common", commonRelics)
	ds_map_add(relicsMap, "uncommon", uncommonRelics)
	ds_map_add(relicsMap, "rare", rareRelics)
	ds_map_add(relicsMap, "cursed", cursedRelics)
	return relicsMap
	
	
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

}