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
eliteFireballSpread = 30 //degree spread of three fired fireballs

//Acid specific variables
maxAcidRange = 50

//Ice specific variables
maxSnowRange = 75

//Player location in relation to Lightning Wizard
current_player_lightning = point_direction(x, y, oPlayer.x, oPlayer.y)
current_difference_lightning = angle_difference(current_player_lightning, playerDirection)
//Distance that the lightning has to shoot
lightning_distance = max(room_width,room_height)

//Player location in relation to Fire Wizard
current_player_fire = point_direction(x, y, oPlayer.x, oPlayer.y)
current_difference_fire = angle_difference(current_player_fire, playerDirection)

goldDropped = 20

elite = false //Start off by assuming this is not elite

//Change to attack
alarm_set(0, standardPhaseTime/random_range(2,4))