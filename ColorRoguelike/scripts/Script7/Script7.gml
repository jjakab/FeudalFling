// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wallCollision(_object, _grid){

	var top_right = ds_grid_get(_grid, (_object.bbox_right - 1) div cellWidth, _object.bbox_top div cellHeight) == WALL
	var top_left = ds_grid_get(_grid, (_object.bbox_left + 1) div cellWidth, _object.bbox_top div cellHeight) == WALL
	var bottom_right = ds_grid_get(_grid, (_object.bbox_right -1) div cellWidth, (_object.bbox_bottom - 1) div cellHeight) == WALL
	var bottom_left = ds_grid_get(_grid, (_object.bbox_left + 1) div cellWidth, (_object.bbox_bottom -1) div cellHeight) == WALL
	
	show_debug_message(top_right + top_left + bottom_right + bottom_left)
	
	return top_right + top_left + bottom_right + bottom_left
}