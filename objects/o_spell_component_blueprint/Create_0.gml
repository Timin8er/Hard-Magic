valid_spot = true;
is_root = false;
has_surface = true;

mouse_over = mouse_hover.off;

spell_editor_controller = instance_find(o_spell_blueprint_controller, 0);
construction_state = component_state.placed;

hold_input_for_a_step = false;

// when snaping this piece to another suface, this is how far away the oregin must be.
bd_surface_snap_distance = bbox_bottom - y; 

//s_surface_define_rectangle_from_mask()

s_bp_surface_define_rectangle_from_mask();
