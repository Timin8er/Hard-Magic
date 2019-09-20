valid_spot = true;
is_root = false;

mouse_over = mouse_hover.off;

spell_editor_controller = instance_find(o_spell_editor_controller, 0);
construction_state = component_state.placed;

hold_input_for_a_step = false;


// construction collitions
//collision_functions[component_collision_type.length] = 0;

//collision_def_f[component_collision_type.square] = s_collision_define_square;

if (collision_type == "square") {
	collision_type = component_collision_type.square;
	s_collision_define_square()
}