//Global variables likely to change when relics are picked up, grouped for convenience
playerHealth = global.playerHealth
maxPlayerHealth = global.maxPlayerHealth
attackDamage = global.attackDamage
fric = global.fric
launchCoefficient = global.launchCoefficient //for each pixel the mouse is from the origin, the character will be launched at this speed

//billiard-based movement
mouseClicked = false
mouseAngle = 0
maxAimRange = 50

moveDir = 0
currSpeed = 0
xSpeed = 0
ySpeed = 0

damageVisualWindow = 10
damaged = false

noDamageWindow = 30

imageSpeedCoefficient = 1.5 //Coefficient for determining image speed based on player speed
speedIdleThreshold = 0.25 //Minimum speed the player needs to be going to 'run'

maxSpeedToRelaunch = 0.5
minMouseDistance = 50

//rotating circle
rotatingCircleCurrentAngle = 0
rotatingCircleDegreesPerStep = .07
rotatingCircleRadiusFromPlayer = 65
rotatingCircleLifespan = 15

//melee attack
attackDamage = global.attackDamage

//retrieving the tile layer
wallMapID = layer_tilemap_get_id("WallTiles")

unstick()

state = "still"

groundHitbox = instance_create_depth(x,y,depth,oPlayerGroundHitbox)


/*
//state management
enum PLAYERSTATES{
	FREE,
	ATTACK
}

state = PLAYERSTATES.FREE
enemiesHit = ds_list_create()
*/