// @desc snaps the given object to me
// @param othero

var othero = argument0;

// get the closesed vertex
var d = 99999999999;
var cv = -1; // vertex closest

// find the closest edge
for (var i=0; i<ds_list_size(bp_surface_vertexs); i++) {
	var vertex = ds_list_find_value(bp_surface_vertexs, i);
	var dp = abs(vertex[bpSurf.m] * mouse_x - mouse_y + vertex[bpSurf.b]) / vertex[bpSurf.den];
	
	if dp < d{
		cv = vertex; // remember this vertex
		d = dp; // remember how close it is
	}
}

// inside or outside the shape?
var mouse_angel = point_direction(cv[bpSurf.x], cv[bpSurf.y], mouse_x, mouse_y);
//show_debug_message(string(mouse_angel));

// direction from the mouse
var beta = cv[bpSurf.v] - (pi/2);

// distance to point
var dis = d + othero.bd_surface_snap_distance;

// 
othero.x = mouse_x + (dis * cos(beta));
othero.y = mouse_y + (dis * sin(beta));

othero.image_angle = radtodeg(- cv[bpSurf.v]);

