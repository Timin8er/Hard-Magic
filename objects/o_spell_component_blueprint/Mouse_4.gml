/// @desc

if (!hold_input_for_a_step) {
	// if I am not being manipulated
	if (construction_state == bp_construction_state.placed || construction_state == bp_construction_state.placed_ghost) {
		// if another bp is being manipulad, place that object on me
		if (instance_exists(spell_editor_controller.manip_bp_component)) {
			s_bp_add_child(spell_editor_controller.manip_bp_component);
			//var s = self
			with spell_editor_controller.manip_bp_component {s_place_bp(); s_bp_anchor_to_parent();}
		
		} else {
			// pick me up
			construction_state = bp_construction_state.manip_root;
			spell_editor_controller.manip_bp_component = self;
			hold_input_for_a_step = true;
			
			// pick up children
			s_bp_manip_children();
		}
	} else { // place me
		s_place_bp();
	}
}

