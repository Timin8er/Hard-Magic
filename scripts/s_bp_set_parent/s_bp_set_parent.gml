// @desc set the paent blueprint of this object
// @param parent

_bp_parent = argument0;

if (instance_exists(_bp_parent)) {

	var dx = _bp_parent.x - x;
	var dy = _bp_parent.y - y;

	// save the 
	_bp_parent_geo[bpParentGeo.r] = sqrt((dy*dy) / (dx*dx));
	_bp_parent_geo[bpParentGeo.a] = arctan2(dy,dx);
	_bp_parent_geo[bpParentGeo.b] = image_angle - _bp_parent.image_angle;


	// if I am not in the parents list of children, add me
	if (ds_list_find_index(_bp_parent._bp_children, self)) {
		var s = self;
		with _bp_parent {
			s_bp_add_child(s);
		}
	}
}