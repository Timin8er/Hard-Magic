// @desc snaps the given object to me
// @param place_obj
// @param on_obj

var place_obj = argument[0];
var on_obj = self;

if (argument_count >= 2) {on_obj = argument[1];}

// get the closesed vertex
var d = 99999999999;
var cv = -1; // vertex closest

// ========== if within the shape ==========

// find the closest edge
for (var i=0; i<ds_list_size(on_obj.bp_surface_vertexs); i++) {
	var vertex = ds_list_find_value(on_obj.bp_surface_vertexs, i);
	var dp = abs(vertex[bpSurf.m] * mouse_x - mouse_y + vertex[bpSurf.b]) / vertex[bpSurf.den];
	
	if dp < d{
		cv = vertex; // remember this vertex
		d = dp; // remember how close it is
	}
}

// direction from the mouse
var beta = cv[bpSurf.v] - (pi/2);

// distance to point
var dis = d + place_obj.bd_surface_snap_distance;

// move the placing object to its new location
place_obj.x = mouse_x + (dis * cos(beta));
place_obj.y = mouse_y + (dis * sin(beta));

place_obj.image_angle = radtodeg(- cv[bpSurf.v]);