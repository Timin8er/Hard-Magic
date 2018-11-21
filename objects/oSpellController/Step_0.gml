/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left) && playerObject.mp) {
   newSpell = instance_create_layer(mouse_x, mouse_y, "layer_spells", oSpellPieceBase);
   playerObject.mp -= newSpell.manaContainerVolume;
}