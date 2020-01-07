/// @description Draw Score

draw_set_color(c_white);
draw_set_alpha(0.5);
draw_rectangle(0, 0, 256, 96, false);

var remaining_death_sources = instance_number(obj_death_teleport);
for (var i = 0; i < instance_number(obj_death_teleport); i++) {
  var instance = instance_find(obj_death_teleport, i);
  if (instance.used) {
    remaining_death_sources--;
  }
}

draw_set_color(c_black);
draw_set_alpha(1.0);
draw_text(8, 8, "Time Remaining: " + format_time(time_remaining) + "\n"
  + "Deaths: " + string(death_count) + "\n"
  + "Level: " + string(remaining_death_sources) + " remaining");
