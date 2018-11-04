// degrade
// manaContainerVolume = manaContainerVolume - ((1000000 / delta_time) * manaEvaporationRate);
mana_container_volume = mana_container_volume - ((delta_time / 1000000) * mana_evaporation_rate);

if (mana_container_volume <= mana_container_volume_min) {
	instance_destroy();
}


// images should fade as item mana depletes
image_alpha = power(mana_container_volume / mana_container_volume_max, 2);
//show_debug_message(image_alpha);