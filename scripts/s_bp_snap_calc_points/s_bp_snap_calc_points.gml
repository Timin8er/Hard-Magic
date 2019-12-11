/// @desc recalc the absolute location and rotation of the snap points

for (var i = 0; i < bp_snap_points_n; i ++) {
	
	var beta = image_angle + bp_snap_points[i, bpSnap.a]; // new angel from origin to vertex, beta = theta + alpha
	
	bp_snap_points[i, bpSnap.x] = x + (bp_snap_points[i, bpSnap.r] * cos(beta));
	
	bp_snap_points[i, bpSnap.y] = y + (bp_snap_points[i, bpSnap.r] * sin(beta));
	
	bp_snap_points[i, bpSnap.w] = image_angle + bp_snap_points[i, bpSnap.b];
}