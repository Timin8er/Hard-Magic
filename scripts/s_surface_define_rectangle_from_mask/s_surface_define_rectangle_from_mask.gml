/// @desc define the verticies for a survace snap mesh

// final order:
// top right, bottom right, bottom left, top left

surface_snap_n = 4;

var top = bbox_top - y;
var bottom = bbox_bottom - y;
var left = bbox_left - x;
var right = bbox_right - x;

// top left
surface_snap_vertex[3,2] = top;
surface_snap_vertex[3,1] = left;

// top right
surface_snap_vertex[0,1] = right;
surface_snap_vertex[0,2] = top;

// bottom right
surface_snap_vertex[1,1] = right;
surface_snap_vertex[1,2] = bottom;

// bottom left
surface_snap_vertex[2,1] = left;
surface_snap_vertex[2,2] = bottom;

s_surface_refresh()

