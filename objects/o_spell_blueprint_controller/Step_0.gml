// if mouse was clicked
if (mouse_check_button_pressed(mb_left)) {
	// if I am manipulating an object
	if (instance_exists(manip_bp_component)) {
		// if not in a valid location
		if (!manip_bp_component.valid_spot) {
			// place as ghost
			s_bp_place(manip_bp_component, bp_construction_state.placed_ghost);
		}
		// in valid location
		else {
			// is it the root part?
			if (manip_bp_component.is_root) {
				// place as solid
				s_bp_place(manip_bp_component);
			}
			// did it choose a parent?
			else if (manip_bp_component._bp_chosen_parent != noone) {
				// place as solid
				s_bp_place(manip_bp_component);
			}
			// no parent
			else {
				// place as ghost
				s_bp_place(manip_bp_component, bp_construction_state.placed_ghost);
			}
		}
		manip_bp_component = noone;
	}
	// if i am not manipulating an object
	else {
		// look for objects under the mouse
		var clicked_objects = ds_list_create();
		collision_point_list(mouse_x, mouse_y, o_spell_component_blueprint, false, false, clicked_objects, true);
		// check for within surface
		var obj_clicked = noone;
		for (var i=0; i < ds_list_size(clicked_objects); i++) {
			var o = ds_list_find_value(clicked_objects, i);
			if (s_bp_surface_within(mouse_x, mouse_y, o)) {
				obj_clicked = o;
				break;
			}
		}
		// if i clicked within a surface
		if (obj_clicked != noone) {
			// pick up that object
			s_bp_pick_up(obj_clicked);
		}
		ds_list_destroy(clicked_objects);
	}
}