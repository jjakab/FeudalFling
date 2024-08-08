//Global variables likely to change when relics are picked up, grouped for convenience
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

//variables related to wind essence
windEssence = false //does the player have the wind essence relic?
shootWindEssence = false //track whether a wind essence needs to be shot
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
for(i = 0; i < array_length(relicsOwned); i++){
	objName = object_get_name(relicsOwned[i])
	if(objName = oRelicShield){
		firstHitNegate = true
	}
	if(objName = oRelicWindEssence) {
		windEssence = true	
	}
}


//if player has a hp restore relic, restore half an hp heart if hp isn't full
