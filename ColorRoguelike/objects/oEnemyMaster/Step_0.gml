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
				
				//Add them to the list that's been hit
				ds_list_add(enemyHitList,other.id)
				
				//If the player has Harkon's Blade, they heal upon succesfully hitting an enemy
				if(global.harkonsBlade) {
					healPlayer(4,0)		
				}
				if(kineticKeystoneActive){
					xSpeed = xSpeed * 1.4
					ySpeed = ySpeed * 1.4
				}
				//If they have not been hit by the charge and the player is moving sufficiently fast enough, hit them
				with(other) {
					//Use this damage to calculate each enemy's hit (for relics that change dmg)
					var tempAttack = oPlayer.attackDamage
					//If player has Vampire cloak triggered, boost damage
					if(oPlayer.vampireCloakDamageBoost){
						tempAttack = tempAttack * 1.25
					}
					//If oPlayer has coolGlasses, add a chance for critical damage
					if(global.coolGlasses){
						var doubleDamage = irandom_range(1, 10)
						if(doubleDamage == 1){
							tempAttack = tempAttack * 2
						}
					}
					hp = hp - tempAttack
					//If the player has wax candle, this enemy has been wax candled
					if(global.waxCandle) {
						waxCandled = true	
					}
					
					alarm_set(11,hurtTime)
					
					//Poison enemy if applicable
					if(global.poisonedBlade) {
						if(not(poisoned)) {
							poisoned = true
							alarm_set(10,poisonDelay)
						}
					}
				}
			
			}
			
		}
	
	}
}


//Kill enemy if applicable
if(hp <= 0){
	
	if(oPlayer.vampireFangsActive){
		var dist,rot
		var death_x= x
		var death_y = y
		dist = irandom(maxHealthPotionRange)
		rot = irandom(360)
		xx = death_x + lengthdir_x(dist,rot)
		yy = death_y + lengthdir_y(dist,rot)
		
		while (instance_place(xx,yy,oWall)) {
			dist = irandom(maxHealthPotionRange)
			rot = irandom(360)
			xx = death_x + lengthdir_x(dist,rot)
			yy = death_y + lengthdir_y(dist,rot)
		}
		instance_create_layer(x, y, "Instances", oHealthPotion)			
	}	
	
	instance_destroy()	
	//Create tombstone animation
	instance_create_layer(x, y, "Instances",oTombstone)
	//Add gold to player 
	gainGold(goldDropped)
}