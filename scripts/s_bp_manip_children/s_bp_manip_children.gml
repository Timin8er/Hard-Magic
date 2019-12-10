for (var i=0; i<ds_list_size(_bp_children); i++) {
	var child = ds_list_find_value(_bp_children, i);
	child.construction_state = bp_construction_state.manip_branch;
	with child {s_bp_manip_children();}
}