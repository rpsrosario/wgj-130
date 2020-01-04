/// @function find_linked_death_source
/// @param link The link to search for
/// @returns The ID of the linked death source
///
/// @description
///   Searches for a linked death source with the same link.
///

var link = argument0;

var count = instance_number(obj_linked_death_source);
for (var i = 0; i < count; i++) {
  var instance = instance_find(obj_linked_death_source, i);
  if (instance.link == link)
    return instance;
}

return undefined;
