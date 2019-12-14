// @desc place the blueprint piece

if (valid_spot or is_root) {
	construction_state = bp_construction_state.placed;
} else {
	construction_state = bp_construction_state.placed_ghost;
}
spell_editor_controller.manip_bp_component = noone;
s_bp_surface_calc_vectors();
s_bp_snap_calc_points();
hold_input_for_a_step = true;

for (var i=0; i<ds_list_size(_bp_children); i++) {
	var child = ds_list_find_value(_bp_children, i);
	child.valid_spot = true;
	with child {s_place_bp();}
}

if (bp_parent_snap != noone) {
	s_bp_set_parent(bp_parent_snap);
	
	// occupy the other point
	var op = ds_list_find_value(bp_parent_snap.bp_snap_points, bp_parent_snap_point_index_other);
	op[bpSnap.occupied] = true;
	ds_list_replace(bp_parent_snap.bp_snap_points, bp_parent_snap_point_index_other, op);
	
	// occupy my point
	var mp = ds_list_find_value(bp_snap_points, bp_parent_snap_point_index_mine);
	mp[bpSnap.occupied] = true;
	ds_list_replace(bp_snap_points, bp_parent_snap_point_index_mine, mp);
}