//Global variables likely to change when relics are picked up, grouped for convenience
attackDamage = global.attackDamage
fric = global.fric
launchCoefficient = global.launchCoefficient //for each pixel the mouse is from the origin, the character will be launched at this speed
dashCooldown = global.dashCooldown

//billiard-based movement
mouseClicked = false
mouseAngle = 0
maxAimRange = 50
mouseClickedX = 0
mouseClickedY = 0

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

//Variable for acid trail slime damage
acidTrailCooldown = 90

//variables related to wind essence
windEssence = false //does the player have the wind essence relic?
windEssenceDelay = 30 //how long after max launch should wind essence be created
windEssenceSpeedThreshold = 0 //minimum speed threshold for wind essence

//Variables relating to shock collar
shockCollarActive = false
shockCollarLightning = false //Is the lightning being drawn
refreshTimer = 60 * 15 //How long does this to take to refresh after being used
lightningActiveTime = 60 //For how many frames is the lightning active
pairedLightningObj = noone //Which enemy is the lightning paired to
lightningDrawEndFrame = 5 //End frame for drawing lightning
lightningCurrentFrame = 0
lightningActiveFrame = 3 //Frame in which damage is implemented
lightningSegmentsRequired = 0
lightningAngle = 0

//Variables relating to bomber jacket
bomberCooldown = 3 * 60
bomberJacketActive = false

//Variables relating to blood battery
bloodBatteryActive = false

//retrieving the tile layer
wallMapID = layer_tilemap_get_id("WallTiles")

unstick()

state = "still"

groundHitbox = instance_create_depth(x,y,depth,oPlayerGroundHitbox)

//If player has Shield relic, give them a block against the first hit of each room.
firstHitNegate = false
windEssence = false
kineticKeystoneActive = false
vampireFangsActive = false
vampireCloakActive = false
vampireCloakDamageBoost = false

relicsOwned = ds_map_keys_to_array(global.relicsOwned)
//Doing checks for player relics
if(array_contains(relicsOwned, "oRelicShield")){
	firstHitNegate = true
}
if(array_contains(relicsOwned, "oRelicWindEssence")){
	windEssence = true
}
if(array_contains(relicsOwned, "oShockCollar")){
	shockCollarActive = true
}
if(array_contains(relicsOwned, "oBomberJacket")){
	bomberJacketActive = true
}
if(array_contains(relicsOwned, "oBloodBattery")) {
	bloodBatteryActive = true	
}
if(array_contains(relicsOwned, "oKineticKeystone")){
	kineticKeystoneActive = true	
}
if(array_contains(relicsOwned, "oVampireFangs")){
	vampireFangsActive = true	
}
if(array_contains(relicsOwned, "oVampireCloak")){
	vampireCloakActive = true	
}

//if player has a hp restore relic, restore half an hp heart if hp isn't full
if(array_contains(relicsOwned, "oRelicHpRestore")){
	healPlayer(2, 0)
}

