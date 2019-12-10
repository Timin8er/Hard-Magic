/// @description

// if nothing is currently being moved by the user
if (construction_state == component_state.placed || construction_state == component_state.ghost) {
	//show_debug_message("check moving comp:")
	//show_debug_message(spell_editor_controller.moving_component);
	if (!instance_exists(spell_editor_controller.moving_component)) {
		//show_debug_message("picking up")
		construction_state = component_state.moving_free;
		spell_editor_controller.moving_component = self;
		hold_input_for_a_step = true;
	}
}
