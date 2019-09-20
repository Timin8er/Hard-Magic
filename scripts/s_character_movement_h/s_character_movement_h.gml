// @desc calculate basic charactor movement
// @param hspeed_scalar

var hspeed_scalar = argument0

var x_check;

// ================================================================================================
// hotisontal collition

//var bbox_side;

hsp = hspeed_scalar * walk_speed;

// dont go too fast or these calculations will go bad
clamp(hsp, -31, 31);

if (hsp > 0) {
	x_check = ceil(bbox_right + hsp);
} else {
	x_check = floor(bbox_left + hsp);
}

// check bottom corner
var col = (tilemap_get_at_pixel(collision_tilemap, x_check, bbox_bottom) != 0);

// check points, starting at the top corner and working down
if (!col) {
	for (var i = 0; i < ntcc_h; i++) {
		if (tilemap_get_at_pixel(collision_tilemap, x_check, bbox_top + (i * 32)) != 0) {
			col = true;
			break;
		}
	}
}

// react to colition
//if (tilemap_get_at_pixel(collision_tilemap, x_check, bbox_top) != 0  || tilemap_get_at_pixel(collision_tilemap, x_check, bbox_bottom) != 0) {
if (col) {
	if (hsp > 0) {
		x = x - (bbox_right % 32) + 31;
	} else {
		x = x - (bbox_left % 32);
	}
	hsp = 0;
}
x += hsp;

