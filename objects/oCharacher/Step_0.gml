/// @description Insert description here
// You can write your code in this editor
// mp regen

mp += mp_regen_rate * (delta_time / 1000000);
if (mp > mp_max) {
	mp = mp_max;
}