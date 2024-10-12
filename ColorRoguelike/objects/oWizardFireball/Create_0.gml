/// @description Insert description here
event_inherited()
damage = 2
projType = "fireball"
projDirection = 0
//Adding all enemies to the enemy list
relicsOwned = ds_map_keys_to_array(global.relicsOwned)
if(array_contains(relicsOwned, "oFireballFriendly")){
	enemyProjectileList(id)
	//Removing fire wizards so that projectile doesn't instantly vanish
	ds_list_delete(enemies, ds_list_find_index(enemies, oEnemyFireWizardElite))
	ds_list_delete(enemies, ds_list_find_index(enemies, oEnemyFireWizard))
}
