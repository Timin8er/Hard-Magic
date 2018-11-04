event_inherited();

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

// calculate movement
var move = key_right - key_left;

speed_hor = move * walk_speed;

if (place_meeting(x, y + 1, oTerrain) && key_jump) {
	speed_ver = -7;
}

process_movement();


if (mouse_check_button_pressed(mb_left)) {
	var this_spell = ds_list_find_value(spells, 0);
	var cost = ds_map_find_value(this_spell, "net_mp");
	
	if (mp >= cost) {
		summon_spell(this_spell, mouse_x, mouse_y);
		mp -= cost;
	}
}
