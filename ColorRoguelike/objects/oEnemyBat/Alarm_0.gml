/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)){
	mp_grid_path(pathGrid, path, x, y, oPlayer.x, oPlayer.y, true)
	path_start(path, getEnemyMovespeedFactor(0.7), path_action_stop, false)
}

alarm_set(0,10)