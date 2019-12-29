// if we're bing maniplated
if construction_state == bp_construction_state.manip_root {
		
	// ========== determine weather the mouse is within an objects surface ==========
	var within = false;
	// get the object we're mousing over
	var inst = collision_point(mouse_x, mouse_y, o_spell_component_blueprint, false, true)
	// if the mouse is hovering over a solid blueprint, snap to the edge
	if (inst and inst.construction_state == bp_construction_state.placed) {
		// move to snap point
		with inst {
			if (s_bp_surface_within(mouse_x, mouse_y)) {
				within = true;
			}
		}
	// else, move to the mouse curser
	}
	if within {
		var s = self
		with inst {s_bp_surface_snap(s);}
		_bp_chosen_parent = inst;
	} else {
		_bp_chosen_parent = noone;
		// if mouse isn't hovering over anything, move free
		x = mouse_x;
		y = mouse_y;
	}
		
	// readjust were our snap points are
	s_bp_snap_calc_points();
		
	// attempt to snap to points
	s_bp_snap_snap();
		
	// move all children
	for (var i=0; i<ds_list_size(_bp_children); i++) {
		var child = ds_list_find_value(_bp_children, i);
		with child {s_bp_repose_rel_parrent();}
	}
}

//image_angle+=0.5;