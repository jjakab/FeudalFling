//Global variables likely to change when relics are picked up, grouped for convenience
attackDamage = global.attackDamage
fric = global.fric
launchCoefficient = global.launchCoefficient //for each pixel the mouse is from the origin, the character will be launched at this speed

//billiard-based movement
mouseClicked = false
mouseAngle = 0
maxAimRange = 50
mouseClickedX = 0
mouseClickedY = 0
dashCooldown = 60

moveDir = 0
currSpeed = 0
xSpeed = 0
ySpeed = 0
hitSpeedThreshold = 0.5

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

//Create list of enemies hit per charge
enemyHitList = ds_list_create()

//variables related to wind essence
windEssence = false //does the player have the wind essence relic?
windEssenceDelay = 30 //how long after max launch should wind essence be created
windEssenceSpeedThreshold = 1.2 //minimum speed threshold for wind essence

//retrieving the tile layer
wallMapID = layer_tilemap_get_id("WallTiles")

unstick()

state = "still"

groundHitbox = instance_create_depth(x,y,depth,oPlayerGroundHitbox)

//If player has Shield relic, give them a block against the first hit of each room.
firstHitNegate = false
windEssence = false

relicsOwned = ds_map_keys_to_array(global.relicsOwned)
//Doing checks for player relics
if(array_contains(relicsOwned, "oRelicShield")){
	firstHitNegate = true
}
if(array_contains(relicsOwned, "oRelicWindEssence")){
	windEssence = true
}

//if player has a hp restore relic, restore half an hp heart if hp isn't full
if(array_contains(relicsOwned, "oRelicHpRestore") && global.playerHealth != global.maxPlayerHealth && global.healthGain = true){
	global.playerHealth += min(global.maxPlayerHealth - global.playerHealth, 2)
}

