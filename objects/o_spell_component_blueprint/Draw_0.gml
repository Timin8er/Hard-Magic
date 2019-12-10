/// @description 

// if placed in an invalid spot, draw as transparent red
if (construction_state == bp_construction_state.placed_ghost) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_orange, 0.5);
}
// if being directly manipulated, draw as grey, slightly transparent
else if construction_state == bp_construction_state.manip_root {
	if (valid_spot or is_root) {
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_ltgray, 0.8);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_orange, 0.8);
	}
}
// if being indirectly manipulated, draw as grey transparent
else if (construction_state == bp_construction_state.manip_branch) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_ltgray, 0.5);
}
// if placed as part of the bp tree, standard draw
else if (construction_state == bp_construction_state.placed) {
	draw_sprite(sprite_index, 0, x, y);
}

//if (true){
//	var l = bp_surface_vertex_n -1;
//	for (var i=0; i < l; i++) {
//		draw_line_width_color(bp_surface_vertexs[i,bpSurf.x], bp_surface_vertexs[i,bpSurf.y], bp_surface_vertexs[i+1,bpSurf.x], bp_surface_vertexs[i+1,bpSurf.y], 2, c_orange, c_orange);
//	}
//	draw_line_width_color(bp_surface_vertexs[l,bpSurf.x], bp_surface_vertexs[l,bpSurf.y], bp_surface_vertexs[0,bpSurf.x], bp_surface_vertexs[0,bpSurf.y], 2, c_orange, c_orange)
//}
