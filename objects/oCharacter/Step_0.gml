// hp regen / decay
if (hp_rate > 0) {
	hp = min(hp_max, hp + hp_rate);
} else {
	hp = max(0, hp + hp_rate);
}


// mp regen / decay
if (mp_rate > 0) {
	mp = min(hp_max, mp + hp_rate);
} else {
	mp = max(0, mp + mp_rate);
}



