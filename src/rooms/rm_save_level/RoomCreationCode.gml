/// Saves the contents of the room in JSON format

var level = ds_map_create();
var sources = ds_list_create();
var tilemap = ds_map_create();
var spawn = ds_map_create();

var tile_1 = ds_list_create();
var tile_2 = ds_list_create();

ds_map_add_map(level, "tilemap", tilemap);
ds_map_add_list(level, "sources", sources);
ds_map_add_map(level, "spawn", spawn);

ds_map_add_list(tilemap, 1, tile_1);
ds_map_add_list(tilemap, 2, tile_2);

var map = layer_tilemap_get_id(TILEMAP_LAYER);
for (var tx = 0; tx < room_width / CELL_SIZE; tx++) {
  for (var ty = 0; ty < room_height / CELL_SIZE; ty++) {
    var tile = tilemap_get(map, tx, ty);
    var list = tilemap[? tile_get_index(tile)];
    if (!is_undefined(list)) {
      var coords = ds_map_create();
      coords[? "x"] = tx;
      coords[? "y"] = ty;
      ds_list_add(list, coords);
    }
  }
}

for (var i = 0; i < instance_number(obj_death_source); i++) {
  var instance = instance_find(obj_death_source, i);
  var death_source = ds_map_create();
  death_source[? "x"] = instance.x;
  death_source[? "y"] = instance.y;
  death_source[? "hscale"] = instance.image_xscale;
  death_source[? "vscale"] = instance.image_yscale;
  ds_list_add(sources, death_source);
}

spawn[? "x"] = obj_player.x;
spawn[? "y"] = obj_player.y;

for (var i = 0; i < ds_list_size(tile_1); i++)
  ds_list_mark_as_map(tile_1, i);
for (var i = 0; i < ds_list_size(tile_2); i++)
  ds_list_mark_as_map(tile_2, i);
for (var i = 0; i < ds_list_size(sources); i++)
  ds_list_mark_as_map(sources, i);

clipboard_set_text(json_encode(level));
ds_map_destroy(level);
