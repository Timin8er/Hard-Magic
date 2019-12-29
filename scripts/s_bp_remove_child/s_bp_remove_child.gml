// @desc set the paent blueprint of this object
// @param parent

var parent = argument0;
var child = argument1;

// find and remove the child from the list
var i = ds_list_find_index(parent._bp_children, child);
if (i) {ds_list_delete(parent._bp_children, i);}

// if the child still has me as a parent, set it to null
if (child._bp_parent == self) {
	child._bp_parent = noone;
}