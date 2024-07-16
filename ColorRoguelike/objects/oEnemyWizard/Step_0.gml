/// @description Insert description here
// You can write your code in this editor

if(state == "attack"){
	var player_x = oPlayer.x
	var player_y = oPlayer.y 
	
	var current_player = point_direction(x, y, player_x, player_y)
	var current_difference = angle_difference(current_player, playerDirection)
	
	var projectile = instance_create_layer(x, y, "Instances", oWizardFireball);
	projectile.direction = current_player;
	projectile.speed = 2
	state = "run"
	alarm_set(0, 120)
	direction = irandom(360)
}
else if (state == "run"){
	
	motion_set(direction, moveSpeed)
	if(wallCollision(self, oRoomCreator.occupiedGrid) > 0){
		direction = 360-direction
		motion_set(direction, moveSpeed)
	}
}