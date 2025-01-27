// Inherit the parent event
event_inherited();

hp = 200

//Path setting variables so that slime can track the oPlayer
path = path_add()
gridSize = 16
gridWidth = room_width div gridSize
gridHeight = room_height div gridSize
pathGrid = mp_grid_create(112, 64, gridWidth, gridHeight, gridSize, gridSize)
mp_grid_add_instances(pathGrid, oWall, false)


xSpeed = 2
ySpeed = 2

canDamage = 0

hopping = true
startHopFrame = 3
stopHopFrame = 9

hopSpeed = random_range(0.6,0.8)