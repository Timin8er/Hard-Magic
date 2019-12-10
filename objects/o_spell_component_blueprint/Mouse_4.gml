/// @description

// if nothing is currently being moved by the user
if (!hold_input_for_a_step) {
	if (construction_state == bp_construction_state.placed || construction_state == bp_construction_state.placed_ghost) {
		//show_debug_message("check moving comp:")
		//show_debug_message(spell_editor_controller.moving_component);
		if (!instance_exists(spell_editor_controller.manip_bp_component)) {
			//show_debug_message("picking up")
			construction_state = bp_construction_state.manip_root;
			spell_editor_controller.manip_bp_component = self;
			hold_input_for_a_step = true;
		}
	}
}
