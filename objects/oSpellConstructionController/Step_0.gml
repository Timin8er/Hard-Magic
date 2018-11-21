/// @description Insert description here
// You can write your code in this editor

// place the piece
if (mouse_check_button_pressed(mb_left)) {
	new_piece = instance_create_layer(mouse_x, mouse_y, "layer_pieces", asset_get_index(piece_class));
	
	new_piece.flag_construction = true;
}