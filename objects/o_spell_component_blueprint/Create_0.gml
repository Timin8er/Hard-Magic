valid_spot = true;
is_root = false;

mouse_over = mouse_hover.off;

_bp_parent = noone;
_bp_chosen_parent = noone
_bp_parent_geo[bpParentGeo.length] = 0;

_bp_children = ds_list_create();

construction_state = bp_construction_state.placed;

// when snaping this piece to another suface, this is how far away the oregin must be.
bd_surface_snap_distance = bbox_bottom - y;

bp_surface_vertexs = ds_list_create();
bp_snap_points = ds_list_create();