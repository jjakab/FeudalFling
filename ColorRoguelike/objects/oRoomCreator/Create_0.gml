/// @description Insert description here
// You can write your code in this editor

randomize()

divisor = 64


//make a 2d grid to represent different cells in 2D array and set every cell to false
occupiedGrid = ds_grid_create(room_width / divisor, room_height / divisor)
for (var heightIncrement = 0; heightIncrement < ds_grid_height(occupiedGrid);heightIncrement++) {
	for (var widthIncrement = 0; widthIncrement < ds_grid_width(occupiedGrid); widthIncrement++) {
		ds_grid_set(occupiedGrid,widthIncrement,heightIncrement,false)
	}
}

roomXPos = 0
roomYPos = 0
roomHeight = 0
roomWidth = 0
arrayLeftX = 0
arrayRightX = 0
arrayLowerY = 0
arrayUpperY = 0

angleToSearch = 0
gridDistanceToSearch = divisor / 5

roomCount = 7
currentRoom = 1

for (currentRoom = 1; currentRoom < roomCount; currentRoom++)
{
	//DYNAMIC ROOM GENERATION
	/*if(currentRoom = 1) //if this is the first room, we generate a random x y coordinate pair
	{
		roomXPos = irandom_range(5,ds_grid_width(occupiedGrid) - 5)
		roomYPos = irandom_range(5,ds_grid_height(occupiedGrid) - 5)
		
	}
	else //if this is not the first room, we move in a random direction until that direction is valid
	{
		do {
			angleToSearch = irandom_range(0,359) //choose a random angle
		} until(
			ds_grid_get( //if we go a certain number of units in the direction we chose, do we hit an occupied cell?
				occupiedGrid,
				roomXPos + max(0,min(ds_grid_width(occupiedGrid),ceil(gridDistanceToSearch * cos(angleToSearch)))),
				roomYPos + max(0,min(ds_grid_width(occupiedGrid),ceil(gridDistanceToSearch * sin(angleToSearch))))
			) = false
		)
		
		//change the new x and y accordingly
		roomXPos += max(0,min(ds_grid_width(occupiedGrid),ceil(gridDistanceToSearch * cos(angleToSearch))))
		roomYPos += max(0,min(ds_grid_width(occupiedGrid),ceil(gridDistanceToSearch * sin(angleToSearch))))
	}
	*/
	
	switch(currentRoom)
	{
		case 1:
			roomXPos = 6
			roomYPos = 6
		break;
		case 2:
			roomXPos = 18
			roomYPos = 6
		break;
		case 3:
			roomXPos = 30
			roomYPos = 6
		break;
		case 4:
			roomXPos = 6
			roomYPos = 17
		break;
		case 5:
			roomXPos = 18
			roomYPos = 17
		break;
		case 6:
			roomXPos = 30
			roomYPos = 17
		break;
		default:
		break;
	}
	
	
	roomWidth = irandom_range(8,12)
	roomHeight = irandom_range(8,12)
	
	arrayLeftX = max(0,roomXPos - ceil(roomWidth / 2))
	arrayRightX = min(ds_grid_width(occupiedGrid),roomXPos + ceil(roomWidth / 2))
	arrayLowerY = min(ds_grid_height(occupiedGrid),roomYPos + ceil(roomHeight / 2))
	arrayUpperY = max(0,roomYPos - ceil(roomHeight / 2))
	
	//set surrounding array cells to be filled
	for (var arrayX = arrayLeftX; arrayX < arrayRightX; arrayX++) {
		for (var arrayY = arrayUpperY; arrayY < arrayLowerY; arrayY++) {
			ds_grid_set(occupiedGrid,arrayX,arrayY,true)
		}
	}
	
	//create a room at the specified position
	createRoom(
		(arrayRightX * divisor),
		(arrayLeftX * divisor),
		(arrayLowerY * divisor),
		(arrayUpperY * divisor),
		200
		)
	
	
}


//createRoom(room_width,0,room_height,0,200)





/*
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
var iteration = 0
//Looping through the number of steps and moving through the grid randomly
repeat (steps) {
	ds_grid_set(grid_, controllerX, controllerY, FLOOR)
	
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

for(var _y = 1; _y < height_ -1; _y++){
	for(var _x = 1; _x < width_ -1; _x++){
		if (ds_grid_get(grid_, _x, _y) == FLOOR){
			tilemap_set(wallMapID,1 , _x, _y)
		}
	}
}

