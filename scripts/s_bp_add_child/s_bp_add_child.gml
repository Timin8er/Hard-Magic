// @desc set the paent blueprint of this object
// @param parent

var child = argument0;

// if the child is not in my list of children, add it
if (!ds_list_find_index(_bp_children, child)) {
	ds_list_add(_bp_children, child);
}

// if the child does not have me as the parent, set the parent to me.
if (child._bp_parent != self) {
	var s = self;
	with child {s_bp_set_parent(s);}
}