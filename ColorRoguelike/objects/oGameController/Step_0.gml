//If the room is emptied, spawn stat selection
if(roomEmpty = false) {
	if(instance_number(oEnemyMaster) <= 0) {
	
		spawnStatSelection()
		roomEmpty = true
	}
}
