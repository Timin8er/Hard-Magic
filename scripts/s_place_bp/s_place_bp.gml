// @desc place the blueprint piece

show_debug_message("putting down : " + string(self))

if (valid_spot) {
	construction_state = bp_construction_state.placed;
} else {
	construction_state = bp_construction_state.placed_ghost;
}
spell_editor_controller.manip_bp_component = noone;
s_bp_surface_calc_vectors();
hold_input_for_a_step = true;