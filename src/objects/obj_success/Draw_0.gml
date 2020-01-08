/// @description Show Failure Message

draw_set_font(global.fnt_message_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_text(room_width / 2 - 1, room_height / 2, "You completed\nall levels!");
draw_text(room_width / 2 + 1, room_height / 2, "You completed\nall levels!");
draw_text(room_width / 2, room_height / 2 - 1, "You completed\nall levels!");
draw_text(room_width / 2, room_height / 2 + 1, "You completed\nall levels!");

draw_set_color(c_green);
draw_text(room_width / 2, room_height / 2, "You completed\nall levels!");
