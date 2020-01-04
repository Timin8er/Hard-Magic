/// @desc returns the save structure map for the given object.
/// @arg _map

var _map = argument[0];

var _class = ds_map_find_value(_map, "obj");

// create the object
var obj = instance_create_layer(x, y, "Instances", asset_get_index(_class)); 
obj.construction_state = bp_construction_state.placed

// if the parent geometry is undefined, it is root
var geo  = ds_map_find_value(_map, "parentGeo")
if (geo == undefined) {
	obj.is_root = true;

} else {
	obj._bp_parent_geo[bpParentGeo.r] = ds_list_find_value(geo, 0);
	obj._bp_parent_geo[bpParentGeo.a] = ds_list_find_value(geo, 1);
	obj._bp_parent_geo[bpParentGeo.b] = ds_list_find_value(geo, 2);
}

// load the extra data
if (obj.load_script != noone) {
	script_execute(obj.load_script, obj, _map);
}

// create all the child objects
var _children = ds_map_find_value(_map, "children");

for (var i=0; i < ds_list_size(_children); i++) {
	var child_map = ds_list_find_value(_children, i);
	var child_obj = s_bp_load_tree_from_save_map(child_map);
	// set parent of child
	s_bp_set_parent(child_obj, obj);
	s_bp_surface_calc_vectors(child_obj);
	s_bp_snap_calc_points(child_obj);
}

return obj;
	
	
