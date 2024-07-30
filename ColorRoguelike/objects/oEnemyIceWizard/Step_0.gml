event_inherited()

if(state="charge") {
	part_emitter_region(_part_system, _part_emitter_0, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y-sprite_height/2, ps_shape_ellipse, ps_distr_linear);
	part_emitter_stream(_part_system, _part_emitter_0, _part_type_0, _rate);	
}
else {
	part_emitter_stream(_part_system, _part_emitter_0, _part_type_0, 0);	
}