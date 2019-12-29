// @desc returns true if the the given point is within this objects surface
// @param X
// @param Y
// @param object

var px = argument[0];
var py = argument[1];
var obj = self;

// if given a third input that is a object, use it instead of self
if (argument_count >= 3) {obj = argument[2];}

var nvert = ds_list_size(obj.bp_surface_vertexs);

if (nvert == 0) { return false; }

var c = 0;
var j = nvert-1;

for (var i=0; i < nvert; j = i++) {
	pointi = ds_list_find_value(obj.bp_surface_vertexs, i);
	pointj = ds_list_find_value(obj.bp_surface_vertexs, j);
	
	if ( ((pointi[bpSurf.y]>py) != (pointj[bpSurf.y]>py)) && (px < (pointj[bpSurf.x]-pointi[bpSurf.x]) * (py-pointi[bpSurf.y]) / (pointj[bpSurf.y]-pointi[bpSurf.y]) + pointi[bpSurf.x]) ) {
		c = !c;
	}
}

return c;