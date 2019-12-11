/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

s_bp_surface_define_rectangle_from_mask();

s_bp_snap_set_n(4);
s_bp_snap_add_point(16,0,0);
s_bp_snap_add_point(0,16,0);
s_bp_snap_add_point(-16,0,0);
s_bp_snap_add_point(0,-16,0);