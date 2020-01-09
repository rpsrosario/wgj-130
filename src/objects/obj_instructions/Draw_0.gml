/// @description Draw Instructions

draw_set_color(c_white);

draw_set_font(global.fnt_message_small);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext(room_width / 2, room_height / 2, messages[current], 42, -1);
