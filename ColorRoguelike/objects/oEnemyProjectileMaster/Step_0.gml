
//If this runs into a wall, destroy it
if(place_meeting(x,y,oWall))
{
	
	if(projType = "fireball"){
		//instance_create_layer(x, y, "Instances", oWizardFireballExplode);
	
		//Determine the direction of the wall relative to the fireball
		wall = instance_place(x,y,oWall)
		xDelta = x - wall.x
		yDelta = y - wall.y
		
		//If the xDelta is larger than the y delta, this is colliding from the right or the left
		if(abs(xDelta) > abs(yDelta)) {
			//If the xDelta is positive, this is colliding from the right side
			if(xDelta > 0) {
				instance_create_layer(wall.x + (wall.sprite_width / 2) + 1,y,"Instances",oWizardFireballExplodeAlternate)
			}
			else { //If the xDelta is negative, this is colliding from the left side
				explosion = instance_create_layer(wall.x - (wall.sprite_width / 2) - 1,y,"Instances",oWizardFireballExplodeAlternate)
				with(explosion) {
					image_xscale = -1	
				}
			}
		}
		else { //If the yDelta is larger than the x delta, this is colliding from the top or the bottom
			if(yDelta > 0) { //This is colliding from the bottom
				explosion = instance_create_layer(x,(wall.y + wall.sprite_height / 2) + 1,"Instances",oWizardFireballExplodeAlternate)
				with(explosion) {
					image_angle = 270
				}
			}
			else { //If the yDelta is negative, this is colliding from the top
				explosion = instance_create_layer(x,(wall.y - wall.sprite_height / 2) - 1,"Instances",oWizardFireballExplodeAlternate)
				with(explosion) {
					image_angle = 90
				}
			}
		}
	
	}
	
	instance_destroy()	
}

