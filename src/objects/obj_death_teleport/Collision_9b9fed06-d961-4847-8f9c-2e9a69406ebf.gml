/// @description Disable Death Source

audio_play_sound(sfx_death, 2, false);

other.x = other.xstart;
other.y = other.ystart;

if (!used) {
  other.death_count++;

  var original = other.time_remaining;
  other.time_remaining += BONUS_TIME;
  if (original <= STRESS_TIME && other.time_remaining > STRESS_TIME) {
    audio_sound_gain(other.bgm, 0.4, GAIN_TIME / 4);
  }
  
  used = true;
}
