/// @description Draw Instructions

draw_set_color(c_black);

draw_set_font(global.fnt_logo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width / 2, room_height / 2, "Catching Death");

draw_set_font(global.fnt_gui_small);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_text_ext(8, room_height - 8, "Created by Rui Rosario\nLevel Design by Andre Ribeiro", 26, -1);