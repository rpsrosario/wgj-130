/// @description Control Time

time += delta_time;
if (time / 1000000 >= 3)
  room_goto(rm_game);
