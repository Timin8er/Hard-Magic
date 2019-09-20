event_inherited();

// ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== =====
// movement

var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
//var key_jump = keyboard_check(vk_space);
var key_jump = keyboard_check_pressed(vk_space);

//sMovementPhysics(key_right - key_left, key_jump);
s_character_movement(key_right - key_left, key_jump);
//s_character_movement_h(key_right - key_left);
//s_character_movement_v(key_jump)



// ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== =====
// only check for new spells if not in the middle of one

if (spell_casting == "none") {
	mLeft = false;
	mRight = false;
	mHigh = false;
	mLow = false;
	
	
	if (mouse_check_button_pressed(mb_left)) { mLeft = true; }
	if (mouse_check_button_pressed(mb_right)) { mRight = true; }
	if (keyboard_check(vk_shift)) { mHigh = true; }
	if (keyboard_check(vk_control)) { mLow = true; }
	
	
	if (mLeft) {
		if (mHigh) {
			spell_casting = "high_left";
		} else if (mLow) {
			spell_casting = "low_left";
		} else {
			spell_casting = "mid_left";
		}
		spell_state = "init";
	} else if (mRight) {
		if (mHigh) {
			spell_casting = "high_right";
		} else if (mLow) {
			spell_casting = "low_right";
		} else {
			spell_casting = "mid_right";
		}
		spell_state = "init";
	}
}


// ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== ===== =====
// spell logic

if (spell_casting == "mid_left") {
	if (mouse_check_button_released(mb_left)) {
		newBall = instance_create_layer(x, y, "Instances", o_scc_plazma);
	
		newBall.hsp = (mouse_x - x)*2;
		newBall.vsp = (mouse_y - y)*2;
		spell_casting = "none";
		spell_state = "none";
	}
}
