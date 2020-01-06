/// @description 

var i = 0;
var sp = sMissionNodeLocked;
var col = c_ltgray;

if click { i = 2;}
else if hover { i = 1;}

if unlocked {
	sp = sMissionNodeUnlocked;
	col = c_dkgray;
}

draw_sprite(sp, i, x, y);

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(col);
draw_text(x+64, y+32, levelName);
