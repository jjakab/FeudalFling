//The paired tower should always be in the same frame as this
pairedTower.image_index = image_index

//If we are in charge state, increment the image_speed based on defined parameters

if(state = "charging") {
	image_speed+= (finalChargeSpeed - startChargeSpeed) / (chargeTime)
}

