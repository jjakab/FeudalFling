
numItems = irandom_range(3,4)

ySpawn = 120
xLeftLimit = 160
xRightLimit = 380
additive = (xRightLimit - xLeftLimit) / (numItems -1)
currentXPlace = xLeftLimit


instanceLayerID = layer_get_id("Instances");


relics = createRelicList()

//Spawning items in
for(i = 0; i <numItems; i++){
	instance_create_layer(currentXPlace, ySpawn,instanceLayerID, ds_list_find_value(relics, 0))
	currentXPlace += additive
}