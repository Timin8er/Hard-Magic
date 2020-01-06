var new_x = view_anchor_corner_x;
var new_y = view_anchor_corner_y;

// modify x based on anchor point
if (view_corner_anchor == 1 or view_corner_anchor == 4 or view_corner_anchor == 7) {
	new_x = (window_get_width() / 2) - view_anchor_corner_x;
	
} else if (view_corner_anchor == 2 or view_corner_anchor == 5 or view_corner_anchor == 8) {
	new_x = window_get_width() - view_anchor_corner_x;
}

// modify y based on anchor point
if (view_corner_anchor == 3 or view_corner_anchor == 4 or view_corner_anchor == 5) {
	new_y = (window_get_height() / 2) - view_anchor_corner_y;
	
} else if (view_corner_anchor == 6 or view_corner_anchor == 7 or view_corner_anchor == 8) {
	new_y = window_get_height() - view_anchor_corner_y;
}
	

var new_x2 = new_x + sprite_width;
var new_y2 = new_y + sprite_height;

var md = mouse_check_button(mb_left);

draw_set_font(font_main_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

// change text color 
var i = 0;
var c = text_color_default;

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), new_x, new_y, new_x2, new_y2)) {
	if (md) {
		// if over and mouse left is down
		i = 2;
		c = text_color_down;
	} else {
		i = 1;
		c = text_color_hover;
	}
	
	// released mouse left button means activate the script
	if (click_action != noone = mouse_check_button_released(mb_left)) {
		script_execute(click_action);
	}
} 

draw_sprite(sprite_index, i, new_x, new_y);
draw_text_color(new_x+(sprite_width/2), new_y+(sprite_height/2), text, c, c, c, c, 1);
