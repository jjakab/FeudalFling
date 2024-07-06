// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bridgeGap(x1,y1,x2,y2){

	//x and y positions represent location within occupiedGrid
	
	var xGap = abs(x2 - x1)
	var yGap = abs(y2 - y1)
	var xIncrement = xGap / yGap
	var yIncrement = yGap / xGap
	var currentX = x1
	var currentY = y1
	
	if(xGap > yGap)
	{
		for (var currentX = min(x1,x2); currentX < max(x1,x2); currentX += .5)
		{
		
			//Set occupiedGrid values to true
			ds_grid_set(occupiedGrid,floor(currentX),floor(currentY),FLOOR)
			ds_grid_set(occupiedGrid,floor(currentX),ceil(currentY),FLOOR)
			ds_grid_set(occupiedGrid,ceil(currentX),floor(currentY),FLOOR)
			ds_grid_set(occupiedGrid,ceil(currentX),ceil(currentY),FLOOR)
		
		
			/*
			tilemap_set(wallMapID,1,floor(currentX),floor(currentY))
			tilemap_set(wallMapID,1,floor(currentX),ceil(currentY))
			tilemap_set(wallMapID,1,ceil(currentX),floor(currentY))
			tilemap_set(wallMapID,1,ceil(currentX),ceil(currentY))
			*/
		
			currentY += ((yIncrement / 2) * sign(y2 - y1))
		}
	}
	else
	{
		for (var currentY = min(y1,y2); currentY < max(y1,y2); currentY += .5)
		{
		
			//Set occupiedGrid values to true
			ds_grid_set(occupiedGrid,floor(currentX),floor(currentY),FLOOR)
			ds_grid_set(occupiedGrid,floor(currentX),ceil(currentY),FLOOR)
			ds_grid_set(occupiedGrid,ceil(currentX),floor(currentY),FLOOR)
			ds_grid_set(occupiedGrid,ceil(currentX),ceil(currentY),FLOOR)
		
		
			/*
			tilemap_set(wallMapID,1,floor(currentX),floor(currentY))
			tilemap_set(wallMapID,1,floor(currentX),ceil(currentY))
			tilemap_set(wallMapID,1,ceil(currentX),floor(currentY))
			tilemap_set(wallMapID,1,ceil(currentX),ceil(currentY))
			*/
		
			currentX += ((xIncrement) * sign(x2 - x1))
		}
	}


}