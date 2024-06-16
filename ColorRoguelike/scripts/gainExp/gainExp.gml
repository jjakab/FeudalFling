//Script that runs every time a shape is destroyed, adds exp to the player
function gainExp(){
	
	//Map to dictate how much exp each shape gives
	shapeExpMap = ds_map_create()
	
	ds_map_add(shapeExpMap, "square", 5)
	ds_map_add(shapeExpMap, "triangle", 2)
	ds_map_add(shapeExpMap, "pentagon", 7)
	
	//Adding exp 
	var shape = argument0
	global.exp += ds_map_find_value(shapeExpMap, shape)

	//If player exp is greater than next level, level up, then increase next level requirement
	if (global.exp > global.expNextLevel){
		global.exp -= global.expNextLevel
		global.expNextLevel = global.expNextLevel * 1.5
		global.level += 1
	}
	
	
}

