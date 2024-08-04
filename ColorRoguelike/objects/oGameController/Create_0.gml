/// @description Initialize variables

//Player global variables 
global.maxPlayerHealth = 100

global.exp = 0
global.expNextLevel = 10
global.level = 0

global.relicsOwned = ds_map_create()
//Generate random seeds

randomize()