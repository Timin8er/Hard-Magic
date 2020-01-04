/// @desc Executable by the world controller to construct and save the spell structure as a json file
/// @arg _filename

var _filename = argument[0]

// thisis the map containing all spell data
var _spell_map = ds_map_create();

// get the blueprint tree structure
var _blueprint_structure = s_bp_get_tree_save_map(root_bp_component)
ds_map_add_map(_spell_map, "blueprint_structure", _blueprint_structure);

// spell name
ds_map_add(_spell_map, "title", spell_title);

// spell cost
ds_map_add(_spell_map, "cost", spell_cost);

// encode and save
var _string = json_encode(_spell_map);
save_string_to_file(_filename, _string);

// nuke the data:
ds_map_destroy(_spell_map);

print("game saved");