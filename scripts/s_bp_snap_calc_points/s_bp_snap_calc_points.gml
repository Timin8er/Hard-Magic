/// @desc recalc the absolute location and rotation of the snap points

for (var i=0; i < ds_list_size(bp_snap_points); i++) {
	
	var point = ds_list_find_value(bp_snap_points, i);
	
	var beta = degtorad(image_angle) + point[bpSnap.a]; // new angel from origin to vertex, beta = theta + alpha
	
	point[bpSnap.x] = x + (point[bpSnap.r] * cos(beta));
	
	point[bpSnap.y] = y + (point[bpSnap.r] * sin(beta));
	
	point[bpSnap.w] = degtorad(image_angle) + point[bpSnap.b];
	
	ds_list_replace(bp_snap_points, i, point);
}