if (!hold_input_for_a_step) {

	// if we're bing maniplated
	if construction_state == bp_construction_state.manip_root {
		// place block?
		if (mouse_check_button_pressed(mb_left)) {
			//show_debug_message("putting down")
			if (valid_spot) {
				construction_state = bp_construction_state.placed;
			} else {
				construction_state = bp_construction_state.placed_ghost;
			}
			spell_editor_controller.manip_bp_component = noone;
			s_bp_surface_calc_vectors();
			hold_input_for_a_step = true;
			exit;
		}
	
		// get the object we're mousing over
		var inst = collision_point(mouse_x, mouse_y, o_spell_component_blueprint, false, true)
		if (inst) {
			var s = self
			// move to snap point
			with inst {
				s_bp_surface_snap(s);
			}
		} else {
			// if mouse isn't hovering over anything, move free
			x = mouse_x;
			y = mouse_y;
		}
	}
	
} else {
	hold_input_for_a_step = false;
}