//When a new room is entered, set roomEmpty to false only if there are enemies
if(instance_number(oEnemyMaster) > 0) {
	roomEmpty = false	
}
else { //If there are no enemies, we don't want to spawn the stat selection
	roomEmpty = true
}	

show_debug_message("# of gameControllers: " + string(instance_number(oGameController)))