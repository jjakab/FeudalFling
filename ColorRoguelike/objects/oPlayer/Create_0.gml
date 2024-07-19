/// @description Initiate variables


moveSpeed = 0.5

keyRight = 0
keyUp = 0

//billiard-based movement
mouseClicked = false
mouseAngle = 0
maxAimRange = 50

moveDir = 0
launchCoefficient = .03 //for each pixel the mouse is from the origin, the character will be launched at this speed
currSpeed = 0
fric = 0.005
xSpeed = 0
ySpeed = 0

maxSpeedToRelaunch = 0.5
minMouseDistance = 50

//rotating circle
rotatingCircleCurrentAngle = 0
rotatingCircleDegreesPerStep = .07
rotatingCircleRadiusFromPlayer = 65
rotatingCircleLifespan = 15

//melee attack
attack_range = 20
attacking = false
attackCooldown = 30
attackTimer = 0

//retrieving the tile layer
wallMapID = layer_tilemap_get_id("WallTiles")

//state management
enum PLAYERSTATES{
	FREE,
	ATTACK
}

state = PLAYERSTATES.FREE
enemiesHit = ds_list_create()