/// @description Initialize variables

global.exp = 0
global.expNextLevel = 10
global.level = 1

//Map to dictate how much exp each shape gives
shapeExpMap = ds_map_create()
	
ds_map_add(shapeExpMap, "square", 11)
ds_map_add(shapeExpMap, "triangle", 2)
ds_map_add(shapeExpMap, "pentagon", 7)

//Map of enemy types to arbitrary integers
enemyTypeMap = ds_map_create()

ds_map_add(enemyTypeMap,1,oEnemyPentagon)
ds_map_add(enemyTypeMap,2,oEnemySquare)
ds_map_add(enemyTypeMap,3,oEnemyTriangle)

//Variables related to spawning enemies
enemiesToSpawn = 3 //will be determined based on wave #
enemiesSpawned = 0

spawnVertical = 0
spawnX = 0
spawnY = 0
targetX = 0
targetY = 0
spawnAngleToTarget = 0
spawnConeWidth = 80
spawnCurrentAngle = 0
spawnIncrementAngle = 0
spawnDirectionalModifier = 0
spawnInitialVelocity = 8

alarm_set(0,60)

//Draw settings
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_font(fLevelFont)

//Generate random seeds
randomize()