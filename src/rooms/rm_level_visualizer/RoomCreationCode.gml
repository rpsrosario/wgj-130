var json = get_string("Level Data", "");
if (json == "") {
  game_end();
} else {
  var map = json_decode(json);
  deserialize_map(map);
  ds_map_destroy(map);
}
