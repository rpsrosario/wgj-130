/// @description Show Failure Message

draw_set_font(global.fnt_message_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_text(room_width / 2 - 1, room_height / 2, "Time ran out!");
draw_text(room_width / 2 + 1, room_height / 2, "Time ran out!");
draw_text(room_width / 2, room_height / 2 - 1, "Time ran out!");
draw_text(room_width / 2, room_height / 2 + 1, "Time ran out!");

draw_set_color(c_red);
draw_text(room_width / 2, room_height / 2, "Time ran out!");
