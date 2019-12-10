if (!hold_input_for_a_step) {

	// if we're bing maniplated
	if construction_state == bp_construction_state.manip_root {
	
		// get the object we're mousing over
		var inst = collision_point(mouse_x, mouse_y, o_spell_component_blueprint, false, true)
		// if the mouse is hovering over a solid blueprint, snap to the edge
		if (inst and inst.construction_state == bp_construction_state.placed and inst.has_surface) {
			valid_spot = true
			var s = self
			// move to snap point
			with inst {
				s_bp_surface_snap(s);
			}
		// else, move to the mouse curser
		} else {
			valid_spot = false
			// if mouse isn't hovering over anything, move free
			x = mouse_x;
			y = mouse_y;
		}
		
		// move all children
		for (var i=0; i<ds_list_size(_bp_children); i++) {
			var child = ds_list_find_value(_bp_children, i);
			with child {s_bp_repose_rel_parrent();}
		}
	}
	
} else {
	hold_input_for_a_step = false;
}