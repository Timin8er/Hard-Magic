// @desc place the blueprint piece

var obj = self; // the object to place
if (argument_count >= 1) {obj = argument[0];}
//var obj = argument[0];

var state = bp_construction_state.placed; // the state to place it in
if (argument_count >= 2) {state = argument[1];}

var par = obj._bp_chosen_parent; // the parent to attach to
if (argument_count >= 3) {par = argument[2];}

//print (string(obj) + " " + string(state) + " " + string(par)); 

if count > 10 {return}
count ++ 

// if given a new parent, set the parent
if (par != noone) {
	s_bp_add_child(par, obj);
	obj._bp_chosen_parent = noone;

// else if the object already has a parent, move to where it should be
} else if (obj._bp_parent != noone) {
	s_bp_repose_rel_parrent(obj);
}

// change my state
obj.construction_state = state;

// recalc absolute positions of surface and snap points
with obj {
	s_bp_surface_calc_vectors();
	s_bp_snap_calc_points();
}

// place all children
for (var i=0; i < ds_list_size(obj._bp_children); i++) {
	var child = ds_list_find_value(obj._bp_children, i);
	s_bp_place(child, state);
}









