/// @description Check for collisions

var tilemap = layer_tilemap_get_id(TILEMAP_LAYER);
if (is_solid(tilemap, bbox_left, bbox_top)
  || is_solid(tilemap, bbox_left, bbox_bottom)
  || is_solid(tilemap, bbox_right, bbox_bottom)
  || is_solid(tilemap, bbox_right, bbox_bottom)) {
  
  instance_destroy();
}
