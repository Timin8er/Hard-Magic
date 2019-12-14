/// @description 

// if placed in an invalid spot, draw as transparent red
if (construction_state == bp_construction_state.placed_ghost) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_orange, 0.5);
}
// if being directly manipulated, draw as grey, slightly transparent
else if construction_state == bp_construction_state.manip_root {
	if (valid_spot or is_root) {
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_ltgray, 0.8);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_orange, 0.8);
	}
}
// if being indirectly manipulated, draw as grey transparent
else if (construction_state == bp_construction_state.manip_branch) {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_green, 0.5);
}
// if placed as part of the bp tree, standard draw
else if (construction_state == bp_construction_state.placed) {
	draw_sprite(sprite_index, 0, x, y);
}

// draw snap points
if (construction_state == bp_construction_state.manip_root or construction_state == bp_construction_state.placed) {
	for (var i=0; i<ds_list_size(bp_snap_points); i++) {
		var point = ds_list_find_value(bp_snap_points, i);
		
		if (!point[bpSnap.occupied]) {
			draw_circle_color(point[bpSnap.x], point[bpSnap.y], 5, c_orange, c_black, false);
			draw_line(point[bpSnap.x], point[bpSnap.y], point[bpSnap.x] + 10*cos(point[bpSnap.w]), point[bpSnap.y] + 10*sin(point[bpSnap.w]));
		}
	}
}


if (bp_parent_snap_point_index_mine != undefined) {
	var op = ds_list_find_value(bp_parent_snap.bp_snap_points, bp_parent_snap_point_index_other);
	var mp = ds_list_find_value(bp_snap_points, bp_parent_snap_point_index_mine);
	
	draw_circle_color(op[bpSnap.x], op[bpSnap.y], 8, c_green, c_black, false);
	draw_circle_color(mp[bpSnap.x], mp[bpSnap.y], 8, c_green, c_black, false);
}



// draw surface snap
//if (true){
//	var l = ds_list_size(bp_surface_vertexs);
//	for (var i=0; i < l; i++) {
//		var j = i+1;
//		if (j >= ds_list_size(bp_surface_vertexs)) {j=0;}
		
//		var vi = ds_list_find_value(bp_surface_vertexs, i)
//		var vj = ds_list_find_value(bp_surface_vertexs, j)
		
//		draw_line_width_color(vi[bpSurf.x], vi[bpSurf.y], vj[bpSurf.x], vj[bpSurf.y], 2, c_orange, c_orange);
//	}
//}


