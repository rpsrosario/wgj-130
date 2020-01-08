/// Load Level Data

var buffer = buffer_load("levels.json");
var map = json_decode(buffer_read(buffer, buffer_string));

global.levels = map[? "default"];
global.current_level = 0;

map[? "default"] = undefined;
buffer_delete(buffer);
ds_map_destroy(map);

room_goto_next();