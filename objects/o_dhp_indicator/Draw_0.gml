draw_text_ext_color(x, y, dhp, 0, 100, c_default, c_default, c_default, c_default, (30 - dt) / 30)
//draw_text(x, y, dhp)

dt += 1
y += dy
dy += ddy

if dt > 30 {
	instance_destroy()
}