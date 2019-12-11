// @desc appends a new surface vertex
// @param X
// @param Y

var dx = argument0;
var dy = argument1;

var new_v = array_create(bpSurf.length);

new_v[bpSurf.r] = point_distance(0, 0, dx, dy); // polar radius
new_v[bpSurf.a] = arctan2(dy, dx);// polar angel

ds_list_add(bp_surface_vertexs, new_v);
