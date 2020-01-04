/// @description QuickLoad Hotkey
if (keyboard_check(vk_control)) { // ctrl + s
	
	//var _map_wrapper = ds_map_create();
	spell_load_from_file("spells.json");
}

