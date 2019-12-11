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
			
			//detatch from parent
			if instance_exists(_bp_parent) {
				// if we're connected via snap point
				if (bp_parent_snap_point_index_other != undefined) {
					// detatch from snap points
					// other point
					var op = ds_list_find_value(_bp_parent.bp_snap_points, bp_parent_snap_point_index_other);
					op[bpSnap.occupied] = false;
					ds_list_replace(_bp_parent.bp_snap_points, bp_parent_snap_point_index_other, op);
	
					// my point
					var mp = ds_list_find_value(bp_snap_points, bp_parent_snap_point_index_mine);
					mp[bpSnap.occupied] = false;
					ds_list_replace(bp_snap_points, bp_parent_snap_point_index_mine, mp);
				}
				
				s_bp_set_parent(noone);
			}
			
			// pick up children
			s_bp_manip_children();
		}
	} else { // place me
		s_place_bp();
	}
}

