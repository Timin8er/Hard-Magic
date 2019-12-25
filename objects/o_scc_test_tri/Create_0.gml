/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var top = bbox_top - y;
var bottom = bbox_bottom - y;
var left = bbox_left - x;
var right = bbox_right - x;

// top left
//s_bp_surface_add_point(left, top);

// top right
s_bp_surface_add_point(right, top);

// bottom right
s_bp_surface_add_point(right, bottom);

// bottom left
s_bp_surface_add_point(left, bottom);

s_bp_surface_calc_vectors()


s_bp_snap_add_point(right, 0, 0);
s_bp_snap_add_point(0, bottom, pi/2);

s_bp_snap_calc_points();