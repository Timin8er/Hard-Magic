// list of spells
//   ^map form spell dats
//     ^list of pieces
//       ^map of piece


// piece
piece = ds_map_create();
ds_map_set(piece, "x", 5);
ds_map_set(piece, "y", 5);
ds_map_set(piece, "object", "oSpellPieceBase");


//list of pieces
pieces = ds_list_create();
ds_list_add(pieces, piece);


// map of spell data
spell = ds_map_create();
ds_map_set(spell, "name", "spell");
ds_map_set(spell, "net_mp", 12);
ds_map_set(spell, "spell_piece", "oSpellPieceBase");
ds_map_add_list(spell, "pieces", pieces);

// list of spells
spells = ds_list_create();
ds_list_add(spells, spell);
ds_list_add(spells, "item");


var str;
ini_open("Spells.ini");
str = ds_list_write(spells);
ini_write_string("Lists", "0", str);
ini_close();