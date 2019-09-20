/// @desc refresh the surfaces to snap to.

surface_snap_edge[surface_snap_n, surface_snap.N] = 0;

for (var i = 0; i < surface_snap_n; i ++) {
	
	var x1 = x + surface_snap_vertex[i, 1];
	var y1 = x + surface_snap_vertex[i, 2];
	var x2 = x + surface_snap_vertex[wrap(i+1, 0, surface_snap_n - 1), 1];
	var y2 = x + surface_snap_vertex[wrap(i+1, 0, surface_snap_n - 1), 2];
	
	var m = (x2-x1)/(y2-y1);
	var b = y1 - (m * x1);
	
	surface_snap_edge[i, surface_snap.A] = -m;
	surface_snap_edge[i, surface_snap.B] = 1;
	surface_snap_edge[i, surface_snap.C] = b;
	surface_snap_edge[i, surface_snap.D] = sqrt(sqr(-m) + 1);
	
}


