// @desc set the paent blueprint of this object
// @param parent

// if we already have a parrent, remove me as a child
if (instance_exists(_bp_parent) and _bp_parent != argument0) {
	var s = self;
	with _bp_parent {s_bp_remove_child(s);}
}

// if the new parent exists
if (instance_exists(argument0)) {
	
	_bp_parent = argument0;
	
	s_bp_anchor_to_parent();
	
	// if I am not in the parents list of children, add me
	if (ds_list_find_index(_bp_parent._bp_children, self) == -1) {
		var s = self;
		with _bp_parent {s_bp_add_child(s);}
	}
	
// if the new parent does not exist
} else {
	_bp_parent = noone;
}