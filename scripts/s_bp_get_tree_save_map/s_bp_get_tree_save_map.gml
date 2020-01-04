/// @desc returns the save structure map for the given object.
/// @arg object
/// @arg is_root

var obj = argument[0];
var _root = true;
if (argument_count >= 2) {_root = argument[1];}

// create map
var _map = ds_map_create();

// the object class name
ds_map_add(_map, "class", object_get_name(obj.object_index));

//if this is the root bp, add empty key for parent geometry
if (_root) {
	ds_map_add(_map, "parentGeo", undefined);

// else, add the parent geometry
} else {
	ds_map_add(_map, "parentGeo", obj._bp_parent_geo);
}

// if the object has an extra data script
if (obj.save_script != noone) {
	script_execute(obj.save_script, obj, _map)
}

// for each child, add as children
var _children = ds_list_create();

//print(ds_list_size(obj._bp_children));
for (var i=0; i < ds_list_size(obj._bp_children); i++) {
	var child = ds_list_find_value(obj._bp_children, i);
	var child_map = s_bp_get_tree_save_map(child, false);
	ds_list_add(_children, child_map);
	ds_list_mark_as_map(_children, i);
}

ds_map_add_list(_map, "children", _children);

return _map;
