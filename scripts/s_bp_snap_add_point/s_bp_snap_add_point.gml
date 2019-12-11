// @desc appends a new snap point
// @param dX
// @param dY
// @param B

var dx = argument0;
var dy = argument1;
var B = argument2;

var new_p = array_create(bpSnap.length);

// set polar radius
new_p[bpSnap.r] = point_distance(0,0,dx,dy);

// set polar angel
new_p[bpSnap.a] = arctan2(dy, dx);

// angel of snap point
new_p[bpSnap.b] = B;

new_p[bpSnap.occupied] = false;

ds_list_add(bp_snap_points, new_p);

