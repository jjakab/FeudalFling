event_inherited()

trackingVar = "healthStat" //Determines which variable this is testing - GLOBAL is automatically appended when this is read
trackingMaxVar = "healthStatMax"

emptyNodeSprite = sHealthNodeEmpty
fullNodeSprite = sHealthNodeFull

//Declare an array of number sprites
numSpritesMap = ds_map_create()

for (var i = 0; i < 10; i++) {
	ds_map_add(numSpritesMap,i,asset_get_index("sHealth" + string(i)))
}

