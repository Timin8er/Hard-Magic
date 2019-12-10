/// @description

if (!hold_input_for_a_step) {
	if (construction_state == bp_construction_state.placed || construction_state == bp_construction_state.placed_ghost) {
		if (instance_exists(spell_editor_controller.manip_bp_component)) {
			with spell_editor_controller.manip_bp_component {s_place_bp();}
		} else {
			show_debug_message("picking up : " + string(self));
			construction_state = bp_construction_state.manip_root;
			spell_editor_controller.manip_bp_component = self;
			hold_input_for_a_step = true;
		}
	}
}

