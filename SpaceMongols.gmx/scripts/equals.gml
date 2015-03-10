#define equals
///equals(a, b, type)

var a = argument0;
var b = argument1;
var type = argument2;
if (str_startsWith(type, 'list:')) {
    return ds_list_equals(a, b, parseType(str_lstrip(type, 'list:')));
}
else if (str_startsWith(type, 'map:')) {
    var keyType = parseType(str_lstrip(type, 'map:'));
    var valType = parseType(str_lstrip(type, 'map:' + keyType + ','));
    return ds_map_equals(a, b, keyType, valType);
}
else if (str_startsWith(type, 'array:')) {
    return array_equals(a, b, parseType(str_lstrip(type, 'array:')));
}
else {
    return a == b;
}

#define greaterThan
///greaterThan(a, b)
/*
    Returns true if a > b
*/

return argument0 > argument1;

#define lessThan
///lessThan(a, b)
/*
    Returns true if a < b
*/

return argument0 < argument1;

#define greaterThanEqualTo
//greaterThanEqualTo(a, b)

return argument0 >= argument1;

#define lessThanEqualTo
///lessThanEqualTo(a, b)

return argument0 <= argument1;