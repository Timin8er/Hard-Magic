// @desc appends a new surface vertex
// @param dX
// @param dY
// @param B

var dx = argument0;
var dy = argument1;
var B = argument2;

// set polar radius
bp_snap_points[bp_snap_points_n, bpSnap.r] = sqrt((dx*dx) + (dy*dy));

// set polar angel
bp_snap_points[bp_snap_points_n, bpSnap.a] = arctan2(dy, dx);

// angel of snap point
bp_snap_points[bp_snap_points_n, bpSnap.b] = B;

bp_snap_points[bp_snap_points_n, bpSnap.occupied] = false;

bp_snap_points_n += 1;

