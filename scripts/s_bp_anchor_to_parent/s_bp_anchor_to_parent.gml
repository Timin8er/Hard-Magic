// @desc calc and save the geometry relative to the parent

var obj = self;
if (argument_count >= 1) {obj = argument[0];}

if instance_exists(obj._bp_parent) {
	var dx = obj.x - obj._bp_parent.x;
	var dy = obj.y - obj._bp_parent.y;
	//show_debug_message("recalcing geo");
	// save the parent releatinve geometry
	obj._bp_parent_geo[bpParentGeo.r] = sqrt((dy*dy) + (dx*dx));
	obj._bp_parent_geo[bpParentGeo.a] = arctan2(dy,dx) - degtorad(-obj._bp_parent.image_angle);
	obj._bp_parent_geo[bpParentGeo.b] = obj.image_angle - obj._bp_parent.image_angle;
}