/// @description Change Alpha

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,
                        obj_player, false, true) != noone) {
  image_alpha = max(image_alpha - FAKE_WALL_ALPHA_SPEED, 0.0);
} else {
  image_alpha = min(image_alpha + FAKE_WALL_ALPHA_SPEED, 1.0);
}
