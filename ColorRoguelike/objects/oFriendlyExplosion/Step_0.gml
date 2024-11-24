if(instance_place(x,y,oEnemyMaster)) {
	
	//Create a temporary list and add all enemies that are colliding into this to it
	tempList = ds_list_create()
	var numEnemies = instance_place_list(x,y,oEnemyMaster,tempList,false)
	
	//Loop through each item in the temporary list
	for (i = 0; i < numEnemies; i++) {
		
		//Check if the item is in the list of enemies that have been hit so far
		if(ds_list_find_index(enemyHitList,ds_list_find_value(tempList,i)) = -1) {
			
			
			if(instance_exists(ds_list_find_value(tempList,i))) {
				//Make the enemy take damage
				with(ds_list_find_value(tempList,i)) {
					hp = hp - other.damage
					alarm_set(11,hurtTime)
				}
			}
			
			//Add the enemy to the list
			ds_list_add(enemyHitList,ds_list_find_value(tempList,i))
			
		}
	}
	
	ds_list_destroy(tempList)
	
}