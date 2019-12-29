// @desc pick up 
// @param object
// @param as_root

var obj = argument[0];
var as_root = true;
if (argument_count >= 2) {as_root = argument[1];}

if (as_root) { // if this is the root
	// sat as the one being manipulated
	var controller = instance_find(o_spell_blueprint_controller, 0);
	controller.manip_bp_component = obj;
	// set construction state
	obj.construction_state = bp_construction_state.manip_root;
	// detatch from parent
	s_bp_set_parent(obj ,noone);
} else {
	obj.construction_state = bp_construction_state.manip_branch;
}

// alert children
for (var i=0; i < ds_list_size(obj._bp_children); i++) {
	var child = ds_list_find_value(obj._bp_children, i);
	s_bp_pick_up(child, false);
}
