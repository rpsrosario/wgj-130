/// @function serialize_map
/// @returns The JSON serialization of the current map.
///
/// @description
///   Loads the information from the current map and serializes that information to JSON.
///

var level = ds_map_create();

#region Serialize Tilemap

var serialized_tilemap = "";
var tilemap = layer_tilemap_get_id(TILEMAP_LAYER);
for (var ty = 0; ty < room_height / CELL_SIZE; ty++) {
  for (var tx = 0; tx < room_width / CELL_SIZE; tx++) {
    var tile = tilemap_get(tilemap, tx, ty);
    serialized_tilemap += string(tile_get_index(tile));
  }
}
level[? "tilemap"] = serialized_tilemap;

#endregion
#region Serialize Objects

var object_list = ds_list_create();
for (var i = 0; i < instance_count; i++) {
  var instance = instance_id[i];
  
  var object = ds_map_create();
  object[? "type"] = object_get_name(instance.object_index);
  object[? "x"] = instance.x;
  object[? "y"] = instance.y;
  
  switch (instance.object_index) {
    
    case obj_launcher_down:
    case obj_launcher_left:
    case obj_launcher_right:
    case obj_launcher_up: {
      // All of the variables are constants depending on the actual subtype of launcher,
      // just listed as documentation that it is expected to be serialized
    } break;
    
    case obj_player: {
      // All of the player information is only relevant for the actual playthrough, the only
      // relevant information for serialization is the position of the spawn location hence why
      // it is actually serialized as a spawn instance.
      object[? "type"] = object_get_name(obj_spawn);
    } break;
    
    case obj_fake_wall: {
      object[? "image_xscale"] = instance.image_xscale;
      object[? "image_yscale"] = instance.image_yscale;
    } break;
    
    case obj_linked_death_source: {
      // If an instance of this object shows up in the level explicitly then it means that there
      // is some special level mechanic depending on its link
      object[? "link"] = instance.link;
    } break;
    
    case obj_death_source: {
      // There might be some mechanic depending on the link
      object[? "link"] = instance.link;
    } /* fallthrough - all of the parent's information must also be stored */
    
    case obj_death_teleport: {
      object[? "image_xscale"] = instance.image_xscale;
      object[? "image_yscale"] = instance.image_yscale;
    } break;
  }
  
  ds_list_add(object_list, object);
  ds_list_mark_as_map(object_list, i);
}

ds_map_add_list(level, "objects", object_list);

#endregion

var json = json_encode(level);
ds_map_destroy(level);
return json;
