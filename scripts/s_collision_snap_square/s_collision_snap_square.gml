// @desc snap a floater to this box
// @param floater

// this script assumes that the mouse is in a valid position for snapping

var floater = argument0;

var x1 = x + bbox_center_dx;
var y1 = y + bbox_center_dy;

// quadrent lines
var line1 = (mouse_y > (mouse_x - x1 + y1));
var line2 = (mouse_y > -(mouse_x - x1) + y1);

// North Quadrent
if (!line1 and !line2) {
	floater.x = mouse_x;
	floater.y = bbox_top - (floater.bbox_bottom - floater.y + 1)
}

// East Quadrent
if (line1 and !line2) {
	floater.x = bbox_left - (floater.bbox_right - floater.x + 1)
	floater.y = mouse_y;
}

// South Quadrent
if (line1 and line2) {
	floater.x = mouse_x;
	floater.y = bbox_bottom + (floater.y - floater.bbox_top + 1)
}

// West Quadrent
if (!line1 and line2) {
	floater.x = bbox_right + (floater.x - floater.bbox_left + 1)
	floater.y = mouse_y;
}