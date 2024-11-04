if(collision_point(mouse_x, mouse_y, object_index, false, false)){
	
	if(object_get_name(object_index) == "oBannerHealth"){
		healPlayer(4, 0)
	}
	if(object_get_name(object_index) == "oBannerSpeed"){
		global.launchCoefficient += 0.2
	}
	with(oBannerMaster){
		instance_destroy()	
	}
}