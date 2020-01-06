/// @function format_time
/// @param time Time in milliseconds
/// @returns The formatted time as a string.
///
/// @description
///   Formats the time supplied into minutes:seconds:milliseconds.
///

var time = argument0;

var millis = time % 1000;
var seconds = (time / 1000) % 60;
var minutes = time / 60000;

return string_replace_all(string_format(minutes, 2, 0), " ", "0") + ":"
  + string_replace_all(string_format(seconds, 2, 0), " ", "0") + ":"
  + string_replace_all(string_format(millis, 3, 0), " ", "0");
