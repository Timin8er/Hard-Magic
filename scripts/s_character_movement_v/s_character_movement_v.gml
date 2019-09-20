// @desc calculate basic charactor movement in the vertical direction
// @param jump


var jump = argument0;

var y_check;

// ================================================================================================
// vertical collition

vsp += grav * 32 * delta_time / 1000000;

// dont go too fast or these calculations will go bad
clamp(vsp, -31, 31);


// set the y to check

if (vsp > 0) { // moving down
	y_check = ceil(bbox_bottom + vsp);
} else {
	y_check = floor(bbox_top + vsp);
}


// start with right point
var col = (tilemap_get_at_pixel(collision_tilemap, bbox_right, y_check) != 0);

// loop through points, starting on the left
if (!col) {
	for (var i = 0; i < ntcc_v; i++) {
		if (tilemap_get_at_pixel(collision_tilemap, bbox_left + (i*32), y_check) != 0) {
			col = true;
			break;
		}
	}
}


// react to colition
if (col) {
	if (vsp > 0) {
		y = y - (bbox_bottom % 32) + 31;
		
		if (jump) { // if jumping
			vsp = -jump_speed;
			s_character_movement_v(0); // repeat this calculation for the new direction we're traveling.
		} else {
			vsp = 0;
		}
	} else {
		y = y - (bbox_top % 32);
		vsp = 0;
	}
}


//if (vsp > 0) { // moving down
	//y_check = ceil(bbox_bottom + vsp);
	// check bottom collition
	//if (tilemap_get_at_pixel(tilemap, bbox_left, y_check) != 0  || tilemap_get_at_pixel(tilemap, bbox_right, y_check) != 0) {	
		// snap to floor
//		y = y - (bbox_bottom % 32) + 31;
		
//		if (jump) { // if jumping
//			vsp = -jump_speed;
//			s_character_movement_v(0); // repeat this calculation for the new direction we're traveling.
//		} else {
//			vsp = 0;
//		}
//	}
	
//} else {
//	y_check = floor(bbox_top + vsp);
	
//	if (tilemap_get_at_pixel(tilemap, bbox_left, y_check) != 0  || tilemap_get_at_pixel(tilemap, bbox_right, y_check) != 0) {
		// snap to cieling
//		y = y - (bbox_top % 32);
//		vsp = 0;
//	}
//}

y = floor(y + vsp);
	