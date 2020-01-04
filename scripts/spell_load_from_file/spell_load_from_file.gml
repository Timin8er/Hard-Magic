/// @desc Executable by the world controller to construct and save the spell structure as a json file
/// @arg _filename

var _filename = argument[0];

var _spell_map = load_json_from_file(_filename);

var _tree_map = ds_map_find_value(_spell_map, "blueprint_structure");

with (o_spell_component_blueprint) {instance_destroy();}

root_bp_component = s_bp_load_tree_from_save_map(_tree_map);

s_bp_repose_rel_parrent(root_bp_component);
s_bp_surface_calc_vectors(root_bp_component, true);
s_bp_snap_calc_points(root_bp_component, true);

