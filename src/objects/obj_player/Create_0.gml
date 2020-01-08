/// @description Setup Player

tilemap = layer_tilemap_get_id(TILEMAP_LAYER);
speed_vector = [ 0, 0 ];

death_count = 0;
time_remaining = INITIAL_TIME;

bgm = audio_play_sound(bgm_level, 1, true);
audio_sound_gain(bgm, 0.4, 0);
