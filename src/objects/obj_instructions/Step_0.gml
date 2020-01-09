/// @description Control Instructions

time += delta_time / 1000000;
if (time >= 5) {
  time -= 5;
  current++;
  if (current >= array_length_1d(messages)) {
    room_goto_next();
  }
}

if (input_jump() || input_pause()) {
  room_goto_next();
}
