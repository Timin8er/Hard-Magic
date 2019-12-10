// @desc appends a new surface vertex
// @param X
// @param Y

var nx = argument0;
var ny = argument1;

// set polar radius
bp_surface_vertexs[bp_surface_vertex_n, bpSurf.r] = sqrt((nx*nx) + (ny*ny));

// set polar angel
bp_surface_vertexs[bp_surface_vertex_n, bpSurf.a] = arctan2(ny, nx);

bp_surface_vertex_n += 1;

