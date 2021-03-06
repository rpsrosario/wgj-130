/// @description Disable Death Source

event_inherited();

var instance = is_undefined(link) ? id : find_linked_instance(obj_linked_death_source, link);
for (var tx = instance.bbox_left; tx <= instance.bbox_right; tx += CELL_SIZE) {
  for (var ty = instance.bbox_top; ty <= instance.bbox_bottom; ty += CELL_SIZE) {
    var tile = tilemap_get(tilemap, tx / CELL_SIZE, ty / CELL_SIZE);
    tile = tile_set_index(tile, COLLISION);
    tilemap_set(tilemap, tile, tx / CELL_SIZE, ty / CELL_SIZE);
  }
}

if (!is_undefined(link)) {
  instance_destroy(instance);
}
instance_destroy();
