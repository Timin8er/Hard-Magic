// @desc place the blueprint piece

if (valid_spot or is_root) {
	construction_state = bp_construction_state.placed;
} else {
	construction_state = bp_construction_state.placed_ghost;
}
spell_editor_controller.manip_bp_component = noone;
s_bp_surface_calc_vectors();
hold_input_for_a_step = true;