/// @desc define the verticies for a survace snap mesh

// final order:
// top right, bottom right, bottom left, top left

s_bp_surface_set_n(4)

var top = bbox_top - y;
var bottom = bbox_bottom - y;
var left = bbox_left - x;
var right = bbox_right - x;

// top left
s_bp_surface_add_point(left, top);

// top right
s_bp_surface_add_point(right, top);

// bottom right
s_bp_surface_add_point(right, bottom);

// bottom left
s_bp_surface_add_point(left, bottom);

s_bp_surface_calc_vectors()

