///ds_map_equals(map1, map2, keyType, valType)

var map1 = argument0;
var map2 = argument1;
var keyType = argument2;
var valType = argument3;
if (ds_map_size(map1) != ds_map_size(map2)) {
    return false;
}
var key = ds_map_find_first(map1);
do {
    if (!ds_map_exists(map2, key)) {
        return false;
    }
    else if (!equals(map1[?key], map2[?key], valType)) {
        return false;
    }
    key = ds_map_find_next(map1, key);
} until (key == ds_map_find_last(map1));
return true;
