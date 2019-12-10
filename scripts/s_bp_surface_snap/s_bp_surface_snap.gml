// @desc snaps the given object to me
// @param othero

var othero = argument0;

// get the closesed vertex
var d = 99999999999;
var vci = -1; // vertex closest index

// find the closest edge
for (var i=0; i<bp_surface_vertex_n; i++) {
	var dp = abs(bp_surface_vertexs[i,bpSurf.m] * mouse_x - mouse_y + bp_surface_vertexs[i,bpSurf.b]) / bp_surface_vertexs[i,bpSurf.den];
	if dp < d{
		vci = i
		d = dp
	}
}

// direction from the mouse
var beta = bp_surface_vertexs[vci,bpSurf.v] - (pi/2);

// distance to point
var dis = d + othero.bd_surface_snap_distance;

// 
othero.x = mouse_x + (dis * cos(beta));
othero.y = mouse_y + (dis * sin(beta));

othero.image_angle = bp_surface_vertexs[vci,bpSurf.v];

