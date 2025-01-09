/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hp = 50

path = path_add()
gridSize = 16
gridWidth = room_width div gridSize
gridHeight = room_height div gridSize


pathGrid = mp_grid_create(112, 64, gridWidth, gridHeight, gridSize, gridSize)
mp_grid_add_instances(pathGrid, oWall, false)

alarm_set(0,10)

xSpeed = 1
ySpeed = 1