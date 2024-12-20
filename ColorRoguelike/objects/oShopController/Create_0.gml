//Manager to dynamically create relics and place them into the shop

//Number of items being placed into the shop
numItems = irandom_range(3,4)
//Placing the items an even distance from each other
ySpawn = 112
xLeftLimit = 60
xRightLimit = 346
additive = (xRightLimit - xLeftLimit) / (numItems -1)
currentXPlace = xLeftLimit
cursed = false

instanceLayerID = layer_get_id("Instances");
relicsMap = createRelicList()
relicsOwned = ds_map_keys_to_array(global.relicsOwned)

randomize()
//Spawning items in
for(i = 0; i <numItems; i++){
	//Generating a random number to determine item rarity
	var itemRarity = irandom_range(1, 10)
	show_debug_message("Number of items is" + string(numItems))
	show_debug_message(itemRarity)
	if(cursed == "true"){
		itemRarity = 11	
	}
	if(itemRarity = 11){
		var cursedRelics = ds_map_find_value(relicsMap, "cursed")
		if(ds_list_size(cursedRelics) > 0){
			relicPicker = irandom_range(0, ds_list_size(cursedRelics)-1)
			var objIndex = ds_list_find_value(cursedRelics, relicPicker)
			instance_create_layer(currentXPlace, ySpawn,instanceLayerID, objIndex)
			ds_list_delete(cursedRelics, relicPicker)
			currentXPlace += additive
		}
		//Set item rarity to uncommon if rare relics all taken
		else{
			itemRarity = 10	
		}
	}
	if(itemRarity = 10){
		var rareRelics = ds_map_find_value(relicsMap, "rare")
		if(ds_list_size(rareRelics) > 0){
			relicPicker = irandom_range(0, ds_list_size(rareRelics)-1)
			var objIndex = ds_list_find_value(rareRelics, relicPicker)
			instance_create_layer(currentXPlace, ySpawn,instanceLayerID, objIndex)
			ds_list_delete(rareRelics, relicPicker)
			currentXPlace += additive
		}
		//Set item rarity to uncommon if rare relics all taken
		else{
			itemRarity = 8	
		}
	}
	if(itemRarity >= 7 && itemRarity <= 9){
		var uncommonRelics = ds_map_find_value(relicsMap, "uncommon")
		if(ds_list_size(uncommonRelics) > 0){
			relicPicker = irandom_range(0, ds_list_size(uncommonRelics)-1)
			var objIndex = ds_list_find_value(uncommonRelics, relicPicker)
			instance_create_layer(currentXPlace, ySpawn,instanceLayerID, objIndex)
			ds_list_delete(uncommonRelics, relicPicker)
			currentXPlace += additive
		}
		//Set item rarity to common if uncommon relics all taken
		else{
			itemRarity = 2	
		}
	}
	if(itemRarity >= 1 && itemRarity <= 6){
		var commonRelics = ds_map_find_value(relicsMap, "common")
		if(ds_list_size(commonRelics) > 0){
			relicPicker = irandom_range(0, ds_list_size(commonRelics)-1)
			var objIndex = ds_list_find_value(commonRelics, relicPicker)
			instance_create_layer(currentXPlace, ySpawn,instanceLayerID, objIndex)
			ds_list_delete(commonRelics, relicPicker)
			currentXPlace += additive
		}	
	}
}
