//If the paired instance doesn't exist and we are in the charge phase, delete this
if(!instance_exists(pairedObj))
{
	
	//If not active, destroy this. If it is active, it stays
	if(active = false) {
		instance_destroy()	
	}
	
}
else {
	if(pairedObj.state == "attack") {
		sprite_index = activeSprite
		active = true

		alarm_set(1,timeSpentActive)
	}
}