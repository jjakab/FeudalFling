//Script that runs every time a shape is destroyed, adds exp to the player
function gainExp(){
	
	//Adding exp 
	var shape = argument0
	global.exp += ds_map_find_value(oGameController.shapeExpMap, shape)

	//If player exp is greater than next level, level up, then increase next level requirement
	if (global.exp > global.expNextLevel){
		global.exp -= global.expNextLevel
		global.expNextLevel = global.expNextLevel * 1.5
		global.level += 1
	}
	
	
}

