#define toString
///toString(object, type)
/*
    type can be the following:
        list:<type> = a list of the given type
        map:<type>,<type> = a map from the first type to the second type
        array:<type> = an array of the given type
        real = a real number
        string = a string
*/

var data = argument0;
var type = argument1;
var result = '';
if (str_startsWith(type, 'list')) {
    result = 'list[';
    type = parseType(str_lstrip(type, 'list:'));
    for (var i = 0; i < ds_list_size(data); i++) {
        result += toString(data[|i], type);
        if (i < ds_list_size(data) - 1) {
            result += ', ';
        }
    }
    result += ']';
}
else if (str_startsWith(type, 'map')) {
    result = 'map{';
    var keyType = parseType(str_lstrip(type, 'map:'));
    var valueType = parseType(str_lstrip(type, 'map:' + keyType + ','));
    var key = ds_map_find_first(data);
    for (var i = 0; i < ds_map_size(data); i++) {
        result += toString(key, keyType) + ': ' +
                toString(data[?key], valueType);
        if (i < ds_map_size(data) - 1) {
            result += ', ';
        }
        key = ds_map_find_next(data, key);
    }
    result += '}';
}
else if (str_startsWith(type, 'array')) {
    result = '[';
    type = parseType(str_lstrip(type, 'array:'));
    for (var i = 0; i < array_length_1d(data); i++) {
        result += toString(data[i], type);
        if (i < array_length_1d(data) - 1) {
            result += ', ';
        }
    }
    result += ']';
}
else if (str_startsWith(type, 'real')) {
    result = string(data);
}
else if (str_startsWith(type, 'string')) {
    result = '"' + data + '"';
}
return result;

#define parseType
///parseType(type)
/*
    Hey, Brent! This is context-free grammars in action!
*/

var type = argument0;
if (str_startsWith(type, 'list:')) {
    return 'list:' + parseType(str_lstrip(type, 'list:'));
}
if (str_startsWith(type, 'map:')) {
    //show_message(type);
    var result = 'map:' + parseType(str_lstrip(type, 'map:')) + ',';
    result += parseType(str_lstrip(type, result));
    return result;
}
if (str_startsWith(type, 'array:')) {
    return 'array:' + parseType(str_lstrip(type, 'array:'));
}
if (str_startsWith(type, 'real')) {
    return 'real';
}
if (str_startsWith(type, 'string')) {
    return 'string';
}