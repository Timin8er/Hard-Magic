/// @description QuickSave Hotkey
if (keyboard_check(vk_control)) { // ctrl + s
	//event_user(0); // everythin generates a save map
	
	//var _map_wrapper = ds_map_create();
	spell_wrap_and_save_map("spells.json");

}
