/// @description Move Player

#region Horizontal Movement

var delta_x = input_move_right() - input_move_left();

if (delta_x != 0) {
  speed_vector[0] = clamp(speed_vector[0] + delta_x * delta_time * SPEED, -MAX_SPEED, MAX_SPEED);
} else if (speed_vector[0] != 0) {
  speed_vector[0] -= sign(speed_vector[0]) * FRICTION;
}

x += speed_vector[0];

if (speed_vector[0] < 0) {
  if (is_solid(tilemap, bbox_left, bbox_top) || is_solid(tilemap, bbox_left, bbox_bottom)) {
    speed_vector[0] = 0;
    x = (floor(x / CELL_SIZE) + 1) * CELL_SIZE;
  }
} else if (speed_vector[0] > 0) {
  if (is_solid(tilemap, bbox_right, bbox_top) || is_solid(tilemap, bbox_right, bbox_bottom)) {
    speed_vector[0] = 0;
    x = floor(x / CELL_SIZE) * CELL_SIZE;
  }
}

#endregion
#region Vertical Movement

if (is_solid(tilemap, bbox_left, bbox_bottom + 1) || is_solid(tilemap, bbox_right, bbox_bottom + 1)) {
  speed_vector[1] = 0;
  if (input_jump()) {
    speed_vector[1] = -JUMP_SPEED;
  }
} else {
  speed_vector[1] = min(speed_vector[1] + GRAVITY, MAX_SPEED);
}

y += speed_vector[1];

if (speed_vector[1] < 0) {
  if (is_solid(tilemap, bbox_left, bbox_top) || is_solid(tilemap, bbox_right, bbox_top)) {
    speed_vector[1] = 0;
    y = (floor(y / CELL_SIZE) + 1) * CELL_SIZE;
  }
} else if (speed_vector[1] > 0) {
  if (is_solid(tilemap, bbox_left, bbox_bottom) || is_solid(tilemap, bbox_right, bbox_bottom)) {
    speed_vector[1] = 0;
    y = floor(y / CELL_SIZE) * CELL_SIZE;
  }
}

#endregion
