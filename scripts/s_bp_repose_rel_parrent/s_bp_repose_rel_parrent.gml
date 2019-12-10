// @desc repositions this object relative to its parent

var al = _bp_parent_geo[bpParentGeo.a] + _bp_parent.image_angle;

x = _bp_parent.x + _bp_parent_geo[bpParentGeo.r] * cos(al);
y = _bp_parent.y + _bp_parent_geo[bpParentGeo.r] * sin(al);

image_angle = _bp_parent_geo[bpParentGeo.b] + _bp_parent.image_angle

// move all children
for (var i=0; i<ds_list_size(_bp_children); i++) {
	var child = ds_list_find_value(_bp_children, i);
	with child {s_bp_repose_rel_parrent();}
}