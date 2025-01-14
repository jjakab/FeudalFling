if(instance_exists(oPlayer)){
	hopSpeed = random_range(0.7,0.9)
	mp_grid_path(pathGrid, path, x, y, oPlayer.x, oPlayer.y, true)
	path_start(path, hopSpeed, path_action_stop, false)
}

alarm_set(0,10)