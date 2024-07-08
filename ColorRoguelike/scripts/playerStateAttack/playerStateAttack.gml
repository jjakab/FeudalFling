//Player's attack state

function playerStateAttack(){
	//If the player isn't in the attack sprite, change it to the attack sprite
	if(sprite_index != sAttackState){
		sprite_index = sAttackState
		image_index = 0
		//Clear the list of enemies hit from the previous attack
		ds_list_clear(enemiesHit)
	}
	//Change the collision to the attack hitbox
	mask_index = sAttackHitbox
	//Create a list for the enemies hit in this frame
	var hitByAttack = ds_list_create()
	var hits = instance_place_list(x, y, oEnemySquare, hitByAttack, false)
	//If enemy is hit, do action
	for(i = 0; i < hits; i++){
		var hitID = ds_list_find_value(hitByAttack, i)
		if(ds_list_find_index(enemiesHit, hitID) == -1){
			ds_list_add(enemiesHit, hitID)
			
			//Perform hit damage here, implement with game manager
		}
	}
	//Destroy list
	ds_list_destroy(hitByAttack)
	mask_index = sPlayerTemporary
	//Reset player to free state
	if(image_index > image_number - 1){
		sprite_index = sPlayerTemporary
		state = PLAYERSTATES.FREE
	}
}