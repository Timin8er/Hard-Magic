/// @desc refresh the surfaces to snap to.

//for each vertex determine the absolute coords
for (var i = 0; i < ds_list_size(bp_surface_vertexs); i ++) {
	
	var vertex = ds_list_find_value(bp_surface_vertexs, i);
	
	var beta = degtorad(image_angle) + vertex[bpSurf.a]; // new angel from origin to vertex, beta = theta + alpha
	
	// new x position
	vertex[bpSurf.x] = x + (vertex[bpSurf.r] * cos(beta));
	
	// new y position
	vertex[bpSurf.y] = y + (vertex[bpSurf.r] * sin(beta));
	
	ds_list_replace(bp_surface_vertexs, i, vertex);
}

// for eac vertex determine the m and b in y = mx + b
for (var i = 0; i < ds_list_size(bp_surface_vertexs); i ++) {
	
	// get the next vector index
	var j = i +1;
	if (j >= ds_list_size(bp_surface_vertexs)) {j = 0;}
	
	var vertex_i = ds_list_find_value(bp_surface_vertexs, i);
	var vertex_j = ds_list_find_value(bp_surface_vertexs, j);
	
	var dy = vertex_j[bpSurf.y] - vertex_i[bpSurf.y];
	var dx = vertex_j[bpSurf.x] - vertex_i[bpSurf.x];
	
	// m = dy / dx
	vertex_i[bpSurf.m] = dy / dx;
	
	// b = y - mx
	vertex_i[bpSurf.b] = vertex_i[bpSurf.y] - (vertex_i[bpSurf.m] * vertex_i[bpSurf.x]);
	
	// denominator of the point distance formula
	vertex_i[bpSurf.den] = sqrt(power(vertex_i[bpSurf.m],2) + 1);
	
	// vector angel
	vertex_i[bpSurf.v] = arctan2(dy, dx);
	
	ds_list_replace(bp_surface_vertexs, i, vertex_i);
}
