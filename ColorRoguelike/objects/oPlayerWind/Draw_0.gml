//draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,0.8)

gpu_set_fog(true, c_grey, 0, 1000)
draw_self()
gpu_set_fog(false, c_grey,0,1000)