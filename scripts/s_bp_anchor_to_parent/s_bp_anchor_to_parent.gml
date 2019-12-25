// @desc calc and save the geometry relative to the parent

if instance_exists(_bp_parent) {
	var dx = x - _bp_parent.x;
	var dy = y - _bp_parent.y;
	//show_debug_message("recalcing geo");
	// save the parent releatinve geometry
	_bp_parent_geo[bpParentGeo.r] = sqrt((dy*dy) + (dx*dx));
	_bp_parent_geo[bpParentGeo.a] = arctan2(dy,dx) - degtorad(-_bp_parent.image_angle);
	_bp_parent_geo[bpParentGeo.b] = image_angle - _bp_parent.image_angle;
}