/// @function input_move_left
/// @returns true if the input to move left is triggered, false otherwise.
///
/// @description
///   Checks if the player is pressing the input to move left.
///

return keyboard_check(vk_left)
  || keyboard_check(ord("A"))
  || (gamepad_is_connected(0) && (
    gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < 0
  ));
