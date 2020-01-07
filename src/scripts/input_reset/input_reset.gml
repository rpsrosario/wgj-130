/// @function input_reset
/// @returns true if the input to reset is triggered, false otherwise.
///
/// @description
///   Checks if the player is pressing the input to reset.
///

return keyboard_check_pressed(vk_backspace)
  || keyboard_check_pressed(ord("R"))
  || (gamepad_is_connected(0) && gamepad_button_check(0, gp_select));
