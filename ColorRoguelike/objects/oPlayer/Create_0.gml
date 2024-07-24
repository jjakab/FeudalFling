/// @description Initiate variables


playerHealth = 10

moveSpeed = 0.5

keyRight = 0
keyUp = 0

//billiard-based movement
mouseClicked = false
mouseAngle = 0
maxAimRange = 50

moveDir = 0
launchCoefficient = .9 //for each pixel the mouse is from the origin, the character will be launched at this speed
currSpeed = 0
fric = 0.006
xSpeed = 0
ySpeed = 0

damageVisualWindow = 10
damaged = false

maxSpeedToRelaunch = 0.5
minMouseDistance = 50

//rotating circle
rotatingCircleCurrentAngle = 0
rotatingCircleDegreesPerStep = .07
rotatingCircleRadiusFromPlayer = 65
rotatingCircleLifespan = 15

//melee attack
attackDamage = 100

//retrieving the tile layer
wallMapID = layer_tilemap_get_id("WallTiles")


/*
//state management
enum PLAYERSTATES{
	FREE,
	ATTACK
}

state = PLAYERSTATES.FREE
enemiesHit = ds_list_create()
*/