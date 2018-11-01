key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

// calculate movement
var move = key_right - key_left;

hsp = move * walksp;
vsp += grv;


if (place_meeting(x, y+1, oWall) && key_jump){
	vsp = -7;
}

// horisontal collition
if (place_meeting(x+hsp, y, oWall)){
	while(!place_meeting(x + sign(hsp), y, oWall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

// vertical collition
if (place_meeting(x, y + vsp, oWall)){
	while(!place_meeting(x, y + sign(vsp), oWall)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;


// mp regen
mp += mpRegenRate * (delta_time / 1000000);
if (mp > mpMax) {
	mp = mpMax;
}

