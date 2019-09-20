/// @desc Saves a string out to a file.
/// @arg fileneam
var _filename = argument0
var _components = ds_list_create()

with (o_component_const_mode) {
	ds_list_add(_components, spell_component_get_save_map());
	ds_list_mark_as_map(_components, ds_list_size(_components) - 1);
}


var _wrapper = ds_map_create();
ds_map_add_list(_wrapper, "components", _components);


var _string = json_encode(_wrapper);
save_string_to_file(_filename, _string);


// nuke the data:
ds_map_destroy(_wrapper);

show_debug_message("gamer saved");