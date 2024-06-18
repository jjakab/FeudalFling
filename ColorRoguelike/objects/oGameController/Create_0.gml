/// @description Initialize variables

global.exp = 0
global.expNextLevel = 10
global.level = 1

//Map to dictate how much exp each shape gives
shapeExpMap = ds_map_create()
	
ds_map_add(shapeExpMap, "square", 11)
ds_map_add(shapeExpMap, "triangle", 2)
ds_map_add(shapeExpMap, "pentagon", 7)


//Draw settings
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_font(fLevelFont)

//Generate random seeds
randomize()