// @desc returns whether a spell bluepring component has a surface
// @param object

var obj = self;

if (argument_count >= 1) { obj = argument[0];}

if (ds_list_size(obj.bp_surface_vertexs) > 1) { return true; }
else {return false;}