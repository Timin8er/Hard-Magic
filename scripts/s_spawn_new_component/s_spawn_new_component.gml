/// @desc snap a floater to this box
/// @param component

if (instance_exists(o_spell_component_blueprint)) {
	manip_bp_component = instance_create_layer(mouse_x, mouse_y, "Instances", argument0);
	manip_bp_component.construction_state = bp_construction_state.manip_root
} else {
	manip_bp_component = instance_create_layer(mouse_x, mouse_y, "Instances", argument0);
	manip_bp_component.construction_state = bp_construction_state.manip_root
	manip_bp_component.is_root = true;
}