/// @description Check for Gamepad

for (var i = 0; i < gamepad_get_device_count(); i++) {
  if (gamepad_is_connected(i)) {
    gamepad_set_axis_deadzone(i, 0.4);
    gamepad_set_button_threshold(i, 0.1);
  }
}
