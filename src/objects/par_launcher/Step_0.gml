/// @description Process Launcher

if (delay > 0) {
  delay--;
  exit;
}

if (is_undefined(find_linked_instance(par_projectile, link))) {
  var projectile = instance_create_layer(x + lengthdir_x(CELL_SIZE, launcher_direction),
                                         y + lengthdir_y(CELL_SIZE, launcher_direction),
                                         layer, projectile_type);
  projectile.link = link;
  projectile.direction = launcher_direction;
}
