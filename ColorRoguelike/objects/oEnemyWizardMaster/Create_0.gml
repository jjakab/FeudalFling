event_inherited()

//Movement related variables
xSpeed = 0.2
ySpeed = 0.2
moveSpeed = 0.5
playerDirection = 0
angle = 0

//Phase timing
state = "attack"
standardPhaseTime = 120

//Fire-specific variables
fireballSpeed = 2


//Acid specific variables
maxAcidRange = 50

//Player location
current_player = point_direction(x, y, oPlayer.x, oPlayer.y)
current_difference = angle_difference(current_player, playerDirection)