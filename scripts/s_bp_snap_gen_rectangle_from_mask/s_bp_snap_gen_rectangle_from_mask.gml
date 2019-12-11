/// @desc define 4 snapp points on the edges of the box

var top = bbox_top - y;
var bottom = bbox_bottom - y;
var left = bbox_left - x;
var right = bbox_right - x;

s_bp_snap_add_point(top, 0, pi/2);
s_bp_snap_add_point(bottom, 0, -pi/2);
s_bp_snap_add_point(0, left, -pi);
s_bp_snap_add_point(0, right, pi);

s_bp_snap_calc_points();
