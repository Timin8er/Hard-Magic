/// @desc summon the inputed spell
/// @param spell	spell map opbject
/// @param x		x coord of the spell origin
/// @param y		y coord of the spell origin

var spell_map = argument[0];
var xx = argument[1];
var yy= argument[2];

// get the piece list
var piece_list = ds_map_find_value(spell_map, "pieces");

// for each piece
for (var i = 0; i < ds_list_size(piece_list); i++) {
	// get piece
	this_piece = ds_list_find_value(piece_list, i);
	
	// set x , y , piece name
	xx = xx + ds_map_find_value(this_piece, "x");
	yy = yy + ds_map_find_value(this_piece, "y");
	var piece = ds_map_find_value(this_piece, "object");
	
	// create piece
	instance_create_layer(xx, yy, "layer_spells", asset_get_index(piece));
}
