if(instance_exists(oPlayer)){
	mp_grid_path(pathGrid, path, x, y, oPlayer.x, oPlayer.y, true)
	path_start(path, 0.7, path_action_stop, false)
}

alarm_set(0,10)