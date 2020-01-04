// @desc repositions this object relative to its parent
// @arg object

var obj = self;

if (argument_count >= 1) { obj = argument[0];}

if obj._bp_parent != noone {
	
	var al = obj._bp_parent_geo[bpParentGeo.a] + degtorad(-obj._bp_parent.image_angle);
	
	obj.x = obj._bp_parent.x + obj._bp_parent_geo[bpParentGeo.r] * cos(al);
	obj.y = obj._bp_parent.y + obj._bp_parent_geo[bpParentGeo.r] * sin(al);
	
	obj.image_angle = obj._bp_parent_geo[bpParentGeo.b] + obj._bp_parent.image_angle
}
// move all children
for (var i=0; i<ds_list_size(obj._bp_children); i++) {
	var child = ds_list_find_value(obj._bp_children, i);
	s_bp_repose_rel_parrent(child);
}