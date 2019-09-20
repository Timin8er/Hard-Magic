if (!hold_input_for_a_step) {
	if (construction_state == component_state.ghost) {
	
	}

	// state of survace snapping movement
	else if construction_state == component_state.moving_snap {
		// place block?
		if (mouse_check_button_pressed(mb_left)) {
			//show_debug_message("putting down")
			if (valid_spot) {
				construction_state = component_state.placed;
			} else {
				construction_state = component_state.ghost;
			}
			spell_editor_controller.moving_component = noone;
			exit;
		}
	
		// get the object we're mousing over
		var inst = collision_point(mouse_x, mouse_y, o_spell_component_const, false, true)
		if (inst) {
			// move to snap point
			var s = self
			with inst {
				s_collision_snap_square(s);
			}
		} else {
			// if mouse isn't hovering over anything, move free
			construction_state = component_state.moving_free
		}
	}


	// state of free movement, following mouse
	else if (construction_state == component_state.moving_free) {
		// place block?
		if (mouse_check_button_pressed(mb_left)) {
			//show_debug_message("putting down")
			if (valid_spot) {
				construction_state = component_state.placed;
			} else {
				construction_state = component_state.ghost;
			}
			spell_editor_controller.moving_component = noone;
			exit;
		}
	
		// move block
		x = mouse_x;
		y = mouse_y;
	
		// transition to surface snapping?
		if (collision_point(mouse_x, mouse_y, o_spell_component_const, false, true)) {
			construction_state = component_state.moving_snap
			//valid_spot = true;
		}
	}
	else if (construction_state == component_state.placed) {

	}
} else {
	hold_input_for_a_step = false;
}