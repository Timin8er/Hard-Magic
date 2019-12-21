if (state < 4) {
	state = 1;
	if (click_action != noone) {
		script_execute(click_action);
	}
}
