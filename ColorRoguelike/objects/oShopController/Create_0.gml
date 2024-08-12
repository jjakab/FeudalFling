//Manager to dynamically create relics and place them into the shop

//Number of items being placed into the shop
numItems = irandom_range(3,4)
//Placing the items an even distance from each other
ySpawn = 120
xLeftLimit = 160
xRightLimit = 380
additive = (xRightLimit - xLeftLimit) / (numItems -1)
currentXPlace = xLeftLimit


instanceLayerID = layer_get_id("Instances");
relics = createRelicList()

randomize()
//Spawning items in
for(i = 0; i <numItems; i++){
	if(ds_list_size(relics) > 0){
		relicPicker = irandom_range(0, ds_list_size(relics)-1)
		//Relic list is in Strings, need to convert to object index to instantiate.
		var objIndex = asset_get_index(ds_list_find_value(relics, relicPicker))
		instance_create_layer(currentXPlace, ySpawn,instanceLayerID, objIndex)
		ds_list_delete(relics, relicPicker)
		currentXPlace += additive
	}
}
