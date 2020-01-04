/// @desc converts the given ds list to an array
/// @arg id

var _id = argument0;

var len = ds_list_size(_id);

var ar;
ar[len - 1] = 0;

for (var i=0; i < len; i++) {
	ar[i] = ds_list_find_value(_id, i);
}

return ar
