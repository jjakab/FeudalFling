
state = "pause";
alarm_set(1, standardPhaseTime/2)
if(wizardType = "fire") {
	current_player = point_direction(x, y, oPlayer.x, oPlayer.y)
	current_difference = angle_difference(current_player, playerDirection)
	var curr_distance = point_distance(x, y, oPlayer.x, oPlayer.y)
	
	var projectile = instance_create_layer(x, y, "Instances", oWizardFlash);
	projectile.image_angle = current_difference;
	projectile.image_xscale = curr_distance/sprite_get_width(sAttackLine)
}