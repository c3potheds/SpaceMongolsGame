///Map(key1, val1, ..., keyn, valn)
/*
    A convenient shorthand for making ds_maps.
*/

var map = ds_map_create();
for (var i = 0; i < argument_count; i += 2) {
    var key = argument[i];
    var val = argument[i+1];
    map[?key] = val;
}
return map;