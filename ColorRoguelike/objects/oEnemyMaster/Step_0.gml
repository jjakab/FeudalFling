/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, oPlayer)){
	
	//Test to see if player is above minimimum speed threshold and that they haven't damaged this enemy
	player = instance_place(x,y,oPlayer)
	with(player) {
		
		//First check if player is moving fast enough
		if(sqrt(sqr(xSpeed) + sqr(ySpeed)) > hitSpeedThreshold) {
			
			//Check if this enemy has already been hit
			if(ds_list_find_index(enemyHitList,other.id) = -1) { //This instance has not already been hit by the charge
				
				ds_list_add(enemyHitList,other.id)
				
				//If they have not been hit by the charge and the player is moving sufficiently fast enough, hit them
				with(other) {
					show_debug_message("Enemy hit")
					hp = hp - oPlayer.attackDamage
					alarm_set(11,hurtTime)
					if(hp <= 0){
						instance_destroy()	
						//Create tombstone animation
						instance_create_layer(x, y, "Instances",oTombstone)
						//Add gold to player 
						global.goldOwned += goldDropped
					}
				}
			
			}
			
			// If the player has already hit this enemy, we do nothing
		}
	//If the player is not moving fast enough, we do nothing
	
	
	
	}
}
