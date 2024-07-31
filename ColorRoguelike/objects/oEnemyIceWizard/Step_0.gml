event_inherited()


if(part_system_exists(_part_system)) {
	if(state="charge" and (image_index < image_number - 3)) {
		part_emitter_region(_part_system, _part_emitter_0, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y-sprite_height/2, ps_shape_ellipse, ps_distr_linear);
		part_emitter_stream(_part_system, _part_emitter_0, _part_type_0, _rate);	
	}
	else {
		part_emitter_stream(_part_system, _part_emitter_0, _part_type_0, 0);	
	}
}