if(collision_point(mouse_x, mouse_y, object_index, false, false)){
	
	if(object_get_name(object_index) == "oBannerHealth"){
		healPlayer(4, 0)
		healthStatIncrease(1)
	}
	if(object_get_name(object_index) == "oBannerSpeed"){
		global.launchCoefficient += 0.2
		speedStatIncrease(1)
	}
	with(oBannerMaster){
		instance_destroy()	
	}
}