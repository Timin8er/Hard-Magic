/// @desc refresh the surfaces to snap to.

//for each vertex determine the absolute coords
for (var i = 0; i < bp_surface_vertex_n; i ++) {
	
	var beta = image_angle + bp_surface_vertexs[i, bpSurf.a]; // new angel from origin to vertex, beta = theta + alpha
	
	// X = Xc + r*cos(beta)
	bp_surface_vertexs[i, bpSurf.x] = x + (bp_surface_vertexs[i, bpSurf.r] * cos(beta));
	
	// Y = Yc + r*sin(beta)
	bp_surface_vertexs[i, bpSurf.y] = y + (bp_surface_vertexs[i, bpSurf.r] * sin(beta));
}

// for eac vertex determine the m and b in y = mx + b
for (var i = 0; i < bp_surface_vertex_n; i ++) {
	// get the next vector index
	var j = i +1;
	if (j >= bp_surface_vertex_n) {j = 0;}
	
	var dy = bp_surface_vertexs[j, bpSurf.y] - bp_surface_vertexs[i, bpSurf.y];
	var dx = bp_surface_vertexs[j, bpSurf.x] - bp_surface_vertexs[i, bpSurf.x];
	
	// m = dy / dx
	bp_surface_vertexs[i, bpSurf.m] = dy / dx;
	
	// b = y - mx
	bp_surface_vertexs[i, bpSurf.b] = bp_surface_vertexs[i, bpSurf.y] - (bp_surface_vertexs[i, bpSurf.m] * bp_surface_vertexs[i, bpSurf.x]);
	
	// denominator of the point distance formula
	bp_surface_vertexs[i, bpSurf.den] = sqrt(power(bp_surface_vertexs[i, bpSurf.m],2) + 1);
	
	// vector angel
	bp_surface_vertexs[i, bpSurf.v] = arctan2(dy, dx);
}
