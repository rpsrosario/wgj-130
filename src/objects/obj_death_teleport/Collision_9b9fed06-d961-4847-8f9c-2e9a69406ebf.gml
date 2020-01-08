/// @description Disable Death Source

audio_play_sound(sfx_death, 2, false);

effect_create_above(ef_firework, other.x + CELL_SIZE / 2, other.y + CELL_SIZE / 2, 0, c_red);

other.x = obj_spawn.x;
other.y = obj_spawn.y;

other.speed_vector[0] = 0;
other.speed_vector[1] = 0;

if (!used) {
  other.death_count++;

  var original = other.time_remaining;
  other.time_remaining += BONUS_TIME;
  if (original <= STRESS_TIME && other.time_remaining > STRESS_TIME) {
    audio_sound_gain(other.bgm, 0.4, GAIN_TIME / 4);
  }
  
  used = true;
}
