state = 0
text_colors = [text_color_default, text_color_hover, text_color_down, text_color_disabled]

parrent_offset_x = 0;
parrent_offset_y = 0;
parrent_menu_exists = false;

if (instance_exists(parent_menu)) {
	parrent_menu_exists = true;
	parrent_offset_x = x - parent_menu.x;
	parrent_offset_y = y - parent_menu.y;
}