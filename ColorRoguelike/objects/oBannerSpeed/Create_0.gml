event_inherited()

trackingVar = "speedStat" //Determines which variable this is testing - GLOBAL is automatically appended when this is read

// Populate array of number sprites - this is created in master
for (var i = 0; i < 10; i++) {
	ds_map_add(numSpritesMap,i,asset_get_index("sSpeed" + string(i)))
}

arrowSprite = sSpeedArrow
textSprite = sSpeedText
