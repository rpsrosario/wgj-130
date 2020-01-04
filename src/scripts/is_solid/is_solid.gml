/// @function is_solid
/// @param tilemap - The tilemap to use for checking
/// @param x - The x coordinate to check
/// @param y - The y coordinate to check
/// @returns true if the position specific is solid, false otherwise.
///
/// @description
///   Checks if the given position in the room is solid according the tilemap supplied.
///

var tilemap = argument0;
var map_x = argument1;
var map_y = argument2;

return tile_get_index(tilemap_get(tilemap, map_x / CELL_SIZE, map_y / CELL_SIZE)) == COLLISION;
