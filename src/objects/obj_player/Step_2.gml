/// @description Check Level Completion

var remaining_death_sources = instance_number(obj_death_teleport);
for (var i = 0; i < instance_number(obj_death_teleport); i++) {
  var instance = instance_find(obj_death_teleport, i);
  if (instance.used) {
    remaining_death_sources--;
  }
}

if (remaining_death_sources == 0) {
  audio_play_sound(sfx_success, 1, false);

  var total_levels = ds_list_size(global.levels);
  if (++global.current_level == total_levels) {
    room_goto(rm_success);
  } else {
    deserialize_map(global.levels[| global.current_level]);
  }
}
