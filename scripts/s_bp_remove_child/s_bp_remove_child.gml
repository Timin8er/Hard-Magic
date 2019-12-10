// @desc set the paent blueprint of this object
// @param parent

show_debug_message(string(self) + " removing child " + string(argument0));

var child = argument0;

// find and remove the child from the list
var i = ds_list_find_index(_bp_children, argument0);
if (i) {ds_list_delete(_bp_children, i);}

// if the child still has me as a parent, set it to null
if (child._bp_parent == self) {
	child._bp_parent = noone;
}