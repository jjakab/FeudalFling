/// @description Insert description here
// You can write your code in this editor

randomize()

//Split the room based on the tile size
divisor = 16

//Declare the tilemap we're using
floorMapID = layer_tilemap_get_id("FloorTiles"); //declare the tilemap we're using
wallMapID = layer_tilemap_get_id("WallTiles");

//Make a 2d grid to represent different cells in 2D array and set every cell to false
occupiedGrid = ds_grid_create(room_width / divisor, room_height / divisor)
ds_grid_set_region(occupiedGrid,0,0,(room_width / divisor) - 1,(room_height / divisor) - 1, EMPTY)

//Variables related to room generation
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

//Declare two 1D arrays of room positions
roomXCoordinates[0] = 0
roomYCoordinates[0] = 0

for (currentRoom = 1; currentRoom < roomCount; currentRoom++)
{
	//DYNAMIC ROOM GENERATION
	/*if(currentRoom = 1) //if this is the first room, we place it at the top left
	{
		roomXPos = 5
		roomYPos = 5
		
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
	
	roomXCoordinates[currentRoom] = roomXPos
	roomYCoordinates[currentRoom] = roomYPos
	
	
	roomWidth = irandom_range(8,12)
	roomHeight = irandom_range(8,12)
	
	arrayLeftX = max(0,roomXPos - ceil(roomWidth / 2))
	arrayRightX = min(ds_grid_width(occupiedGrid),roomXPos + ceil(roomWidth / 2))
	arrayLowerY = min(ds_grid_height(occupiedGrid),roomYPos + ceil(roomHeight / 2))
	arrayUpperY = max(0,roomYPos - ceil(roomHeight / 2))
	
	//set surrounding array cells to be filled
	/*
	for (var arrayX = arrayLeftX; arrayX < arrayRightX; arrayX++) {
		for (var arrayY = arrayUpperY; arrayY < arrayLowerY; arrayY++) {
			ds_grid_set(occupiedGrid,arrayX,arrayY,true)
		}
	}
	*/
	
	//create a room at the specified position
	createRoom(
		(arrayRightX * divisor),
		(arrayLeftX * divisor),
		(arrayLowerY * divisor),
		(arrayUpperY * divisor),
		200
		)
	
}

bridgeGap(roomXCoordinates[1],roomYCoordinates[1],roomXCoordinates[4],roomYCoordinates[4])
bridgeGap(roomXCoordinates[2],roomYCoordinates[2],roomXCoordinates[5],roomYCoordinates[5])
bridgeGap(roomXCoordinates[3],roomYCoordinates[3],roomXCoordinates[6],roomYCoordinates[6])

bridgeGap(roomXCoordinates[1],roomYCoordinates[1],roomXCoordinates[2],roomYCoordinates[2])
bridgeGap(roomXCoordinates[2],roomYCoordinates[2],roomXCoordinates[3],roomYCoordinates[3])
bridgeGap(roomXCoordinates[4],roomYCoordinates[4],roomXCoordinates[5],roomYCoordinates[5])
bridgeGap(roomXCoordinates[5],roomYCoordinates[5],roomXCoordinates[6],roomYCoordinates[6])

bridgeGap(roomXCoordinates[2],roomYCoordinates[2],roomXCoordinates[6],roomYCoordinates[6])


//Loop through every value in the grid and tile non-empty cells based on bitmap
for (var _y = 1; _y < ds_grid_height(occupiedGrid)-1;_y++) {
	for (var _x = 1; _x < ds_grid_width(occupiedGrid)-1;_x++) {
		
		var _north_tile = ds_grid_get(occupiedGrid,_x,_y-1) == FLOOR
		var _west_tile = ds_grid_get(occupiedGrid,_x-1,_y) == FLOOR
		var _east_tile = ds_grid_get(occupiedGrid,_x+1,_y) == FLOOR
		var _south_tile = ds_grid_get(occupiedGrid,_x,_y+1) == FLOOR
		var _tile_index = NORTH * _north_tile + WEST * _west_tile + EAST * _east_tile + SOUTH * _south_tile
		//Create floors
		if(ds_grid_get(occupiedGrid,_x,_y) = FLOOR)  {
			tilemap_set(floorMapID,_tile_index,_x,_y)
		}
		//Create walls if necessary
		else if(ds_grid_get(occupiedGrid,_x,_y) = EMPTY) {
			ds_grid_set(occupiedGrid, _x, _y, WALL)
			tilemap_set(wallMapID, 16 - _tile_index, _x, _y)
		}
	}
	
}

