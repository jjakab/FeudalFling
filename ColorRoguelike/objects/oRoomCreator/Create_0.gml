/// @description Insert description here
// You can write your code in this editor

randomize()
var wallMapID = layer_tilemap_get_id("WallTiles");

//Creating grid for room generation
width_ = room_width div cellWidth
height_ = room_height div cellHeight

grid_ = ds_grid_create(width_, height_)
//Setting entire region to void
ds_grid_set_region(grid_, 0, 0, width_, height_, empty)
//Centering controller in the middle  of grid
var controllerX = width_ div 2
var controllerY = height_ div 2
//Randomizing first direction of controller
var controllerDirection = irandom(3)
var steps = 200
//Looping through the number of steps and moving through the grid randomly
repeat (steps) {
	ds_grid_set(grid_, controllerX, controllerY, FLOOR)
	
	controllerDirection = irandom(3)
	
	if(controllerDirection == 0){
		controllerX += 1
	}
	else if(controllerDirection == 1){
		controllerY += 1	
	}
	else if(controllerDirection == 2){
		controllerX -= 1	
	}
	else if(controllerDirection == 3){
		controllerY -= 1	
	}
	//Ensuring the controllers don't fall outside the grid
	if (controllerX < 2){
		controllerX -= 2
	}
	else if(controllerX >= width_ -2){
		controllerX -= 2
	}
	if(controllerY < 2){
		controllerY += 2
	}
	else if(controllerY >= height_ -2){
		controllerY -= 2
	}
}

//tilemap_set(wallMapID, 1, 5, 5)

for(var _y = 1; _y < height_ -1; _y++){
	for(var _x = 1; _x < width_ -1; _x++){
		if (ds_grid_get(grid_, _x, _y) == FLOOR){
			tilemap_set(wallMapID,1 , _x, _y)
		}
	}
}

