/// @function input_pause
/// @returns true if the input to pause is triggered, false otherwise.
///
/// @description
///   Checks if the player is pressing the input to pause.
///

return keyboard_check_pressed(vk_escape)
  || (gamepad_is_connected(0) && gamepad_button_check_pressed(0, gp_start));
