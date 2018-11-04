/// @desc instance_create_args
/// @param x
/// @param y
/// @param layer
/// @param object
/// @param ...

var xx = argument[0];
var yy= argument[1];
var llayer = argument[2];
var oobject = argument[3];

for (var i = 4; i < argument_count; i++)
{
    global.creation_parameters[i-4] = argument[i];
}

var instance = instance_create_layer(xx, yy, llayer, oobject);

return instance;