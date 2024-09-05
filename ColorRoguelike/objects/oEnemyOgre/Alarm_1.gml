/// @description Insert description here
// You can write your code in this editor
explodeID = instance_create_layer(x, y, "Instances", oOgreExplode)
state="cooldown"
sprite_index = sEnemyOgreCooldown
image_index = 1
alarm_set(2, 120)