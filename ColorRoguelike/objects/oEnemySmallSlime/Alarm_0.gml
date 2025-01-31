if(instance_exists(oPlayer)){

	mp_grid_path(pathGrid, path, x, y, oPlayer.x, oPlayer.y, true)
	//Each time this is called the previous path gets overidden 
	path_start(path, getEnemyMovespeedFactor(hopSpeed), path_action_stop, false)
}

//alarm_set(0,10)