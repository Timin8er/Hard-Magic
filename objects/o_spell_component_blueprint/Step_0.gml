if (!hold_input_for_a_step) {

	// if we're bing maniplated
	if construction_state == bp_construction_state.manip_root {
		// place block?
		if (mouse_check_button_pressed(mb_left)) {
			//show_debug_message("putting down")
			s_place_bp();
			exit; // nothing else here mappers
		}
		
		
		// check for valid location
		
	
		// get the object we're mousing over
		var inst = collision_point(mouse_x, mouse_y, o_spell_component_blueprint, false, true)
		// if the mouse is hovering over something, snap to the edge
		if (inst and inst.has_surface) {
			var s = self
			// move to snap point
			with inst {
				s_bp_surface_snap(s);
			}
		// else, move to the mouse curser
		} else {
			// if mouse isn't hovering over anything, move free
			x = mouse_x;
			y = mouse_y;
		}
	}
	
} else {
	hold_input_for_a_step = false;
}