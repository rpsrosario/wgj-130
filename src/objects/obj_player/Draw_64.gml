/// @description Draw Score

draw_set_color($222222);
draw_rectangle(0, 0, 792, 72, false);

var remaining_death_sources = instance_number(obj_death_teleport);
for (var i = 0; i < instance_number(obj_death_teleport); i++) {
  var instance = instance_find(obj_death_teleport, i);
  if (instance.used) {
    remaining_death_sources--;
  }
}

draw_set_color(c_white);

draw_set_font(global.fnt_gui_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(396, 40, format_time(time_remaining));

draw_set_font(global.fnt_gui_small);

draw_text_ext(132, 40, "deaths\n" + string(death_count), 26, -1);
draw_text_ext(660, 40, "remaining\n" + string(remaining_death_sources), 26, -1);
