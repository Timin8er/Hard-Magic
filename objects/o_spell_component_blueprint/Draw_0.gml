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

if (true){
	var l = bp_surface_vertex_n -1;
	for (var i=0; i < l; i++) {
		draw_line_width_color(bp_surface_vertexs[i,bpSurf.x], bp_surface_vertexs[i,bpSurf.y], bp_surface_vertexs[i+1,bpSurf.x], bp_surface_vertexs[i+1,bpSurf.y], 2, c_orange, c_orange);
	}
	draw_line_width_color(bp_surface_vertexs[l,bpSurf.x], bp_surface_vertexs[l,bpSurf.y], bp_surface_vertexs[0,bpSurf.x], bp_surface_vertexs[0,bpSurf.y], 2, c_orange, c_orange)
}
