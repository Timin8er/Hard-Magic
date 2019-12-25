/// @desc define 4 snapp points on the edges of the box

var top = bbox_top - y;
var bottom = bbox_bottom - y;
var left = bbox_left - x;
var right = bbox_right - x;

// on top
s_bp_snap_add_point(0, top, -pi/2);

// on the bottom
s_bp_snap_add_point(0, bottom, pi/2);

// on the left
s_bp_snap_add_point(left, 0, pi);

// on the right
s_bp_snap_add_point(right, 0, 0);


s_bp_snap_calc_points();
