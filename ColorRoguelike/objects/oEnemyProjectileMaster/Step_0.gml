
//If this runs into a wall, destroy it
if(place_meeting(x,y,oWall))
{
	//ADD AN ANIMATION HERE
	instance_destroy()	
	if(projType = "fireball"){
		instance_create_layer(x, y, "Instances", oWizardFireballExplode);
		
	}
}

