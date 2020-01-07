/// @function find_linked_instance
/// @param type The object type to search for
/// @param link The link to search for
/// @returns The ID of the linked object
///
/// @description
///   Searches for a linked object with the same link.
///

var type = argument0;
var link = argument1;

var count = instance_number(type);
for (var i = 0; i < count; i++) {
  var instance = instance_find(type, i);
  if (instance.link == link)
    return instance;
}

return undefined;
