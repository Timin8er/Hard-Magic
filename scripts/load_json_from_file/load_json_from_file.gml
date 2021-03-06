/// @ desc load_json_from_file(filename)
/// @arg filename

var _filename = argument0;

var _buffer = buffer_load( _filename );
var _string = buffer_read( _buffer, buffer_string);
buffer_delete( _buffer );

var _map = json_decode( _string );
return _map;