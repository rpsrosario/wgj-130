/// @function deserialize_map
/// @param level The ds map of the JSON of the level to deserialize.
///
/// @description
///   Deserializes the map information supplied and applies it to the current level. For this
///   all objects (except the player) are deleted before applying the level information. The
///   player is also teleported to the spawn location.
///

var level = argument0;

#region Cleanup Current Level

with (all) {
  if (object_index != obj_player) {
    instance_destroy(id, false);
  }
}

#endregion
#region Deserialize Tilemap

var serialized_tilemap = level[? "tilemap"];
var tilemap = layer_tilemap_get_id(TILEMAP_LAYER);

var current_character = 1;
for (var ty = 0; ty < room_height / CELL_SIZE; ty++) {
  for (var tx = 0; tx < room_width / CELL_SIZE; tx++) {
    var tile = tilemap_get(tilemap, tx, ty);
    tile = tile_set_index(tile, real(string_char_at(serialized_tilemap, current_character++)));
    tilemap_set(tilemap, tile, tx, ty);
  }
}

#endregion
#region Deserialize Objects

var layer_id = layer_get_id("Instances");

var object_list = level[? "objects"];
for (var i = 0; i < ds_list_size(object_list); i++) {
  var object = object_list[| i];
  
  var type = object[? "type"];
  var obj_x = object[? "x"];
  var obj_y = object[? "y"];
  var obj_index = asset_get_index(type);
  
  var instance = instance_create_layer(obj_x, obj_y, layer_id, obj_index);
  var variable = ds_map_find_first(object);
  while (!is_undefined(variable)) {
    if (variable != "type" && variable != "x" && variable != "y")
      variable_instance_set(instance, variable, object[? variable]);
    variable = ds_map_find_next(object, variable);
  }
}

obj_player.x = obj_spawn.x;
obj_player.y = obj_spawn.y;
obj_player.speed_vector[0] = 0;
obj_player.speed_vector[1] = 0;

#endregion
