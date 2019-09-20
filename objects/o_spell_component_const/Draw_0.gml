/// @description 

if (construction_state == component_state.ghost) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_ltgray, 0.5);
}
else if construction_state == component_state.moving_snap {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_ltgray, 0.5);
}
else if (construction_state == component_state.moving_free) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_ltgray, 0.5);
}
else if (construction_state == component_state.placed) {
	draw_sprite(sprite_index, 0, x, y);
}
