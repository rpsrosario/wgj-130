/// @description Check for Gamepad

switch (async_load[? "event_type"]) {
  case "gamepad discovered": {
    var pad = async_load[? "pad_index"];
    gamepad_set_axis_deadzone(pad, 0.4);
    gamepad_set_button_threshold(pad, 0.1);
  } break;
}
