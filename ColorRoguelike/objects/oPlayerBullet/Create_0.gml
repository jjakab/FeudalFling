/// @description Get mouse position relative to player and set initial velocity

moveSpeed = 5

xSpeed = moveSpeed * cos(degtorad(point_direction(x,y,mouse_x,mouse_y)))
ySpeed = -moveSpeed * sin(degtorad(point_direction(x,y,mouse_x,mouse_y)))


