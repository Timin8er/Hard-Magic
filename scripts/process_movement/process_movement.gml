/// @description Process movement for charactors


// horisontal collition
if (place_meeting(x + speed_hor, y, oTerrain)) {
	while(!place_meeting(x + sign(speed_hor), y, oTerrain)) {
		x += sign(speed_hor);
	}
	speed_hor = 0;
}
x += speed_hor;

// gravity
speed_ver += grav;

// vertical collition
if (place_meeting(x, y + speed_ver, oTerrain)) {
	while(!place_meeting(x, y + sign(speed_ver), oTerrain)) {
		y += sign(speed_ver);
	}
	speed_ver = 0;
}
y += speed_ver;

