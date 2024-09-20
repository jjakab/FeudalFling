/// @description Initialize variables

//Player global variables 
global.maxPlayerHealth = 20
global.playerHealth = 20

global.attackDamage = 100

global.launchCoefficient = 1.5
global.fric = 0.006

//Stat variables
global.healthStat = 0
global.healthStatMax = 5
global.speedStat = 0
global.speedStatMax = 5
global.cooldownStat = 0
global.cooldownStatMax = 5
global.damageStat = 0
global.damageStatMax = 5

//Other global variables
global.snowSlowCoefficient = 5

global.exp = 0
global.expNextLevel = 10
global.level = 0

global.relicsOwned = ds_map_create()
global.relicStackable = ds_list_create()

ds_list_add(global.relicStackable,"oRelicHpBoost")
ds_list_add(global.relicStackable, "oRelicHpEmpty")

global.goldOwned = 100

//Generate random seeds
randomize()