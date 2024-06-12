/// @description Draw self
draw_self() //always needs to draw itself

//separately, needs to draw the white fill sprite over itself based on health
//draw_sprite_pos(fillSprite,0,x-(sprite_width * (1 - enemyHealth/enemyBaseHealth) / 2),y-(sprite_height * (1 - enemyHealth/enemyBaseHealth) / 2),x+(sprite_width * (1 - enemyHealth/enemyBaseHealth) / 2),y-(sprite_height * (1 - enemyHealth/enemyBaseHealth) / 2),x+(sprite_width * (1 - enemyHealth/enemyBaseHealth) / 2),y+(sprite_height * (1 - enemyHealth/enemyBaseHealth) / 2),x-(sprite_width * (1 - enemyHealth/enemyBaseHealth) / 2),y+(sprite_height * (1 - enemyHealth/enemyBaseHealth) / 2),1)
draw_sprite_pos(fillSprite,0,
	x+(cos(degtorad(-135+image_angle)) * (sprite_width/2) * (1 - enemyHealth/enemyBaseHealth)), //x1
	y+(sin(degtorad(-135+image_angle)) * (sprite_height/2) * (1 - enemyHealth/enemyBaseHealth)), //y1
	x+(cos(degtorad(-45+image_angle)) * (sprite_width/2) * (1 - enemyHealth/enemyBaseHealth)), //x2
	y+(sin(degtorad(-45+image_angle)) * (sprite_height/2) * (1 - enemyHealth/enemyBaseHealth)), //y2
	x+(cos(degtorad(45+image_angle)) * (sprite_width/2) * (1 - enemyHealth/enemyBaseHealth)), //x3
	y+(sin(degtorad(45+image_angle)) * (sprite_height/2) * (1 - enemyHealth/enemyBaseHealth)), //y3
	x+(cos(degtorad(135+image_angle)) * (sprite_width/2) * (1 - enemyHealth/enemyBaseHealth)), //x4
	y+(sin(degtorad(135+image_angle)) * (sprite_height/2) * (1 - enemyHealth/enemyBaseHealth)), //y4
	1)
	
	
	
	





