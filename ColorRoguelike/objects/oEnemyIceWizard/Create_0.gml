event_inherited()

wizardType = "ice"

runSprite = sEnemyIceWizard
attackSprite = sEnemyIceWizardAttack
cooldownSprite = sEnemyIceWizard


//Particles
_part_system = part_system_create();

part_system_automatic_update(_part_system, true);
part_system_automatic_draw(_part_system, true);
var _fps = game_get_speed(gamespeed_fps);

part_system_depth(_part_system,depth-1)

/* Individual snowflake particles*/
_part_type_0 = part_type_create();
part_type_speed(_part_type_0, 0.15, 0.15, 0, 0);
part_type_direction(_part_type_0, 270, 270, 0, 0);
part_type_gravity(_part_type_0, 0, 0);
part_type_orientation(_part_type_0, 0, 0, 0, 0, 0);
part_type_size(_part_type_0, 0.03, 0.04, 0, 0);
part_type_scale(_part_type_0, 1, 1);
part_type_life(_part_type_0, 1.8 * _fps, 1.8 * _fps);
part_type_blend(_part_type_0, false);
part_type_color1(_part_type_0, c_white);
part_type_alpha1(_part_type_0, 1);
part_type_shape(_part_type_0, pt_shape_snow);

/* Snowfall emitter */
_part_emitter_0 = part_emitter_create(_part_system);
part_emitter_region(_part_system, _part_emitter_0, x-sprite_width/2, x+sprite_width/2, y-sprite_height/2, y-sprite_height/2, ps_shape_ellipse, ps_distr_linear);
var _odds = 8;
if (_odds < _fps) {
    _rate =  -1 / (_odds / _fps);
} else {
    _rate = _odds / _fps;
}
part_emitter_stream(_part_system, _part_emitter_0, _part_type_0, _rate);
