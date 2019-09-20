/// @description 

// when the middle mouse is pressed, mark the ititial position of the mouse
if (mouse_check_button_pressed(mb_middle)) {
	x0 = x;
	y0 = y;
	x1 = window_mouse_get_x()
	y1 = window_mouse_get_y()
}

// while the middle mouse button is pressed, move the camera porporional to mouse movement
if (mouse_check_button(mb_middle)) {
	dx1 = (x1 - window_mouse_get_x())*zoom
	dy1 = (y1 - window_mouse_get_y())*zoom
	x = x0 + dx1;
	y = y0 + dy1;
}

var cam_id = view_camera[0];
zoom += (target_zoom - zoom) * zoom_speed;

camera_set_view_size(cam_id, (orig_x_size*zoom), (orig_y_size*zoom));

var cam_width = camera_get_view_width(cam_id);
var cam_height = camera_get_view_height(cam_id);

camera_set_view_pos(cam_id, x-(cam_width/2), y-(cam_height/2));

var mouse_input = mouse_wheel_down() - mouse_wheel_up();
target_zoom += mouse_input/2;

target_zoom = clamp(target_zoom, 0.5, 2)

