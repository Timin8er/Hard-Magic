draw_sprite(sprite_index, 0, x, y);
draw_sprite_stretched(bars_in, 1, 5, 5, mp*10, 15);

if (spell_casting == "mid_left") {
	draw_line_color(mouse_x, mouse_y, x, y, c_red, c_red);
}

if (debug) {
	draw_line(x-32+hsp, y-31, x-32+hsp, y+31);
	draw_line(x+32+hsp, y-31, x+32+hsp, y+31);
	draw_line(x-31, y+32+vsp, x+31, y+32+vsp);
	draw_line(x-31, y-32+vsp, x+31, y-32+vsp);
}
