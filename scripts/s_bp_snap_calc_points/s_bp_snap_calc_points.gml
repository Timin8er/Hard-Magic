/// @desc recalc the absolute location and rotation of the snap points

var obj = self;
if (argument_count >= 1) {obj = argument[0];}
var recursive = false;
if (argument_count >= 2) {recursive = argument[1];}

for (var i=0; i < ds_list_size(obj.bp_snap_points); i++) {
	
	var point = ds_list_find_value(obj.bp_snap_points, i);
	
	var beta = degtorad(-obj.image_angle) + point[bpSnap.a]; // new angel from origin to vertex, beta = theta + alpha
	
	point[bpSnap.x] = obj.x + (point[bpSnap.r] * cos(beta));
	
	point[bpSnap.y] = obj.y + (point[bpSnap.r] * sin(beta));
	
	point[bpSnap.w] = degtorad(-obj.image_angle) + point[bpSnap.b];
	
	ds_list_replace(obj.bp_snap_points, i, point);
}

if (recursive) {
	for (var i=0; i<ds_list_size(obj._bp_children); i++) {
	var child =	ds_list_find_value(obj._bp_children, i);
		s_bp_snap_calc_points(child, true);
	}
}