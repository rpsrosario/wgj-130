/// @description Draw Score

draw_set_color(c_white);
draw_set_alpha(0.5);
draw_rectangle(0, 0, 256, 96, false);

draw_set_color(c_black);
draw_set_alpha(1.0);
draw_text(8, 8, "Time Remaining: " + format_time(time_remaining) + "\n"
  + "Deaths: " + string(death_count) + "\n"
  + "Level: " + string(instance_number(obj_death_source)) + " remaining");
