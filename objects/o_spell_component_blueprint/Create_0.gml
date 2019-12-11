valid_spot = true;
is_root = false;
has_surface = false;

mouse_over = mouse_hover.off;

_bp_parent = noone;
_bp_parent_geo[bpParentGeo.length] = 0;

_bp_children = ds_list_create();

spell_editor_controller = instance_find(o_spell_blueprint_controller, 0);
construction_state = bp_construction_state.placed;

hold_input_for_a_step = false;

// when snaping this piece to another suface, this is how far away the oregin must be.
bd_surface_snap_distance = bbox_bottom - y;

bp_surface_vertexs = undefined;
bp_surface_vertex_n = 0;
bp_snap_points = undefined;
bp_snap_points_n = 0;