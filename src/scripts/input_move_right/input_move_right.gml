/// @function input_move_right
/// @returns true if the input to move right is triggered, false otherwise.
///
/// @description
///   Checks if the player is pressing the input to move right.
///

return keyboard_check(vk_right)
  || keyboard_check(ord("D"))
  || (gamepad_is_connected(0) && (
    gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0
  ));