/// @function input_jump
/// @returns true if the input to jump is triggered, false otherwise.
///
/// @description
///   Checks if the player is pressing the input to jump.
///

return keyboard_check(vk_up)
  || keyboard_check(vk_space)
  || keyboard_check(ord("W"))
  || (gamepad_is_connected(0) && gamepad_button_check(0, gp_face1));
