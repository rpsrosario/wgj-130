/// Initialize Game

#region Load Level Data

var buffer = buffer_load("levels.json");
var map = json_decode(buffer_read(buffer, buffer_string));

global.levels = map[? "default"];
global.current_level = 0;

map[? "default"] = undefined;
buffer_delete(buffer);
ds_map_destroy(map);

#endregion
#region Import Fonts

global.fnt_gui_big = font_add("whitrabt.ttf", 40, false, false, 32, 127);
global.fnt_gui_small = font_add("whitrabt.ttf", 20, false, false, 32, 127);

#endregion

room_goto_next();