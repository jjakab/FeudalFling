
numItems = irandom_range(3,4)

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
	relicPicker = irandom_range(0, ds_list_size(relics)-1)
	show_debug_message(relicPicker)
	instance_create_layer(currentXPlace, ySpawn,instanceLayerID, ds_list_find_value(relics, relicPicker))
	currentXPlace += additive
	
}