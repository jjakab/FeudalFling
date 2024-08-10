
//If this collides with a player, activate the paired door
if(place_meeting(x,y,oPlayer)) {
	with(pairedObj) {
		activated = true	
	}
}