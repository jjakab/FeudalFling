// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createRoom(rightX,leftX,upperY,lowerY,stepCount){	

	//Creating grid for room generation
	width_ = (argument0 - argument1) div wallSize
	height_ = (argument2 - argument3) div wallSize

	grid_ = ds_grid_create(width_, height_)
	//Setting entire region to void
	ds_grid_set_region(grid_, 0, 0, width_, height_, empty)
	//Centering controller in the middle  of grid
	var controllerX = width_ div 2
	var controllerY = height_ div 2
	//Randomizing first direction of controller
	var controllerDirection = irandom(3)
	var steps = 200
	var iteration = 0
	//Looping through the number of steps and moving through the grid randomly
	repeat (stepCount) {
		ds_grid_set(grid_, controllerX, controllerY, FLOOR) //set value of this local grid
		ds_grid_set(occupiedGrid,controllerX + (leftX / wallSize),controllerY + (lowerY / wallSize),true) //set value of master occupiedGrid
		
		controllerDirection = irandom(3)
	
		//reset the controller periodically
		if(iteration % 25 = 0)
		{
			controllerX = width_ div 2
			controllerY = height_ div 2
		}
	
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
			controllerX += 2
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
		iteration++
	}

	//tilemap_set(wallMapID, 1, 5, 5)

	/*for(var _y = 1; _y < height_ -1; _y++){
		for(var _x = 1; _x < width_ -1; _x++){
			if (ds_grid_get(grid_, _x, _y) == FLOOR){
				//instance_create_depth(leftX + (_x * wallSize), lowerY + (_y * wallSize),0,oFloor)
				tilemap_set(wallMapID,1,(leftX / wallSize) + _x, (lowerY / wallSize) + _y)
			}
		}
	}
	*/
	
	ds_grid_destroy(grid_)


}