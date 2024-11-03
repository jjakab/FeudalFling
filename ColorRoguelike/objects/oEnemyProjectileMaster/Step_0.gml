
//If this runs into a wall, destroy it
if(place_meeting(x,y,oWall))
{
	
	var destroy = true //Start off by assuming we will destroy whatever projectile this is
	
	if(projType = "fireball"){
		//instance_create_layer(x, y, "Instances", oWizardFireballExplode);
	
		//Determine the direction of the wall relative to the fireball
		wall = instance_place(x,y,oWall)
		
		//This is colliding from either the top or the bottom of the wall
		if(x > wall.bbox_left and x < wall.bbox_right) {
			
			//This is colliding from the bottom of the wall
			if(projDirection < 180 and projDirection > 0) {
				explosion = instance_create_depth(x,y - (sprite_height/2) + 2,depth,oWizardFireballExplode)
				with(explosion) {
					image_angle = 270	
				}
			}
			
			//This is colliding from the top
			else {
				explosion = instance_create_depth(x,y + (sprite_height/2) - 2,depth,oWizardFireballExplode)
				with(explosion) {
					image_angle = 90
				}
			}
			
		}
		
		//This is colliding from either the right or left of the wall
		else if (y > wall.bbox_top and y < wall.bbox_bottom) {
			
			//This is colliding from the right of the wall
			if(projDirection < 270 and projDirection > 90) {
				explosion = instance_create_depth(x - (sprite_width/2) + 2,y,depth,oWizardFireballExplode)
				with(explosion) {
					image_xscale = 1
				}
			}
			
			//This is colliding from the left of the wall
			else {
				explosion = instance_create_depth(x + (sprite_width/2) - 2,y,depth,oWizardFireballExplode)
				with(explosion) {
					image_xscale = -1
				}
			}
		}
	}
	
	
	if(projType = "arrow") {
		
		//If this has not impacted yet, set the sprite accordingly and stop the arrow
		if(sprite_index = sArrowProjectile) {
			sprite_index = sArrowProjectileImpact
			image_index = 0
			speed = 0
			
		}
		destroy = false //We don't want to destroy the arrow immediately
	}
	
	if(destroy) instance_destroy()	
}

//Code for deciding which enemies to damage
for(var i = 0; i < ds_list_size(enemies); i++){
	//Go through each enemy in the damageable list
	currObj = ds_list_find_value(enemies, i)
	var instanceHit = instance_place(x, y, currObj)
	if(instanceHit != noone){
		//If player, call separate script
		if(currObj = oPlayer.object_index){
			damagePlayer(damage)
			instance_destroy()
		}
		else{
			instanceHit.hp -= damage
			instance_destroy()
		}
	}
}
