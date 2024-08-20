event_inherited()

//Movement related variables
xSpeed = 0.2
ySpeed = 0.2
moveSpeed = 0.5
playerDirection = 0
angle = 0

//Phase timing
state = "initialize"
standardPhaseTime = 120
pauseFirstStep = true //this tracks if the player has

//Fire-specific variables
fireballSpeed = 2


//Acid specific variables
maxAcidRange = 50

//Ice specific variables
maxSnowRange = 75

//Player location
current_player = point_direction(x, y, oPlayer.x, oPlayer.y)
current_difference = angle_difference(current_player, playerDirection)

goldDropped = 20

//Change to attack
alarm_set(0, standardPhaseTime/random_range(2,4))