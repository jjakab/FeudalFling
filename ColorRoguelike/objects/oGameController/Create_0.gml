/// @description Initialize variables

//Player global variables 
global.maxPlayerHealth = 20
global.playerHealth = 20

global.attackDamage = 100

global.launchCoefficient = 1.5
global.fric = 0.006

global.exp = 0
global.expNextLevel = 10
global.level = 0

global.relicsOwned = ds_map_create()
//Generate random seeds

randomize()