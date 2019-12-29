// @desc set the paent blueprint of this object
// @param parent

var child = argument0;
var parent = argument1;

// if we already have a parrent, remove me as a child
if (instance_exists(child._bp_parent) and child._bp_parent != parent) {
	s_bp_remove_child(child._bp_parent, child);
}

// if the new parent exists
if (instance_exists(parent)) {
	
	child._bp_parent = parent;
	
	s_bp_anchor_to_parent(child);
	
	// if I am not in the parents list of children, add me
	if (ds_list_find_index(parent._bp_children, self) == -1) {
		ds_list_add(parent._bp_children, child);
	}
	
// if the new parent does not exist
} else {
	child._bp_parent = noone;
}