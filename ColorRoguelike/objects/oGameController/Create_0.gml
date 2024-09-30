/// @description Initialize variables

//Player global variables 
global.maxPlayerHealth = 48
global.playerHealth = 20

global.attackDamage = 100

global.launchCoefficient = 1.5
global.fric = 0.006

//Stat variables
global.healthStat = 0
global.speedStat = 0
global.cooldownStat = 0
global.damageStat = 0

//Stat increase variables
global.healthIncrease = 1
global.speedIncrease = 1
global.cooldownIncrease = 1
global.damageIncrease = 1

//Other global variables
global.snowSlowCoefficient = 5
global.healthGain = true

global.exp = 0
global.expNextLevel = 10
global.level = 0

global.relicsOwned = ds_map_create()

global.goldOwned = 100

//Generate random seeds
randomize()