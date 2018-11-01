// degrade
// manaContainerVolume = manaContainerVolume - ((1000000 / delta_time) * manaEvaporationRate);
manaContainerVolume = manaContainerVolume - ((delta_time / 1000000) * manaEvaporationRate);

if (manaContainerVolume <= manaContainerVolumeMin) {
	instance_destroy();
}


// images should fade as item mana depletes
image_alpha = power(manaContainerVolume / manaContainerVolumeMax, 2);
//show_debug_message(image_alpha);