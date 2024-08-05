//Player global variables 

//PROBLEM
//For some reason, this isn't initializing variables before ShopController access them, but does work if put in Create method

global.maxPlayerHealth = 100
global.playerHealth = 100

global.launchCoefficient = 1.5
global.fric = 0.006

global.attackDamage = 100

global.exp = 0
global.expNextLevel = 10
global.level = 0



//Generate random seeds
randomize()