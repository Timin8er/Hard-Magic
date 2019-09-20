var max_camera_dis = 100;

var lx = mouse_x - target.x;

if (lx == 0) {
	target_x = target.x;
} else {
	var rx = lx/(lx + sign(lx)*200);
	var dx = (rx * sign(lx) * max_camera_dis);
	target_x = ((target.x + dx) + x)/2;
}

var ly = mouse_y - target.y;
if (ly == 0) {
	target_y = target.y;
} else {
	var ry = ly/(ly + sign(ly)*200);
	var dy = (ry * sign(ly) * max_camera_dis);
	target_y = ((target.y + dy) + y)/2;
}


//==============================================================================

var cam_id = view_camera[0];

x +=  (target_x - x) * scroll_speed;
y +=  (target_y - y) * scroll_speed;
zoom += (target_zoom - zoom) * zoom_speed;

camera_set_view_size(cam_id, (orig_x_size*zoom), (orig_y_size*zoom));

var cam_width = camera_get_view_width(cam_id);
var cam_height = camera_get_view_height(cam_id);

camera_set_view_pos(cam_id, x-(cam_width/2), y-(cam_height/2));

var mouse_input = mouse_wheel_down() - mouse_wheel_up();
target_zoom += mouse_input/2;

target_zoom = clamp(target_zoom, 0.5, 2)

