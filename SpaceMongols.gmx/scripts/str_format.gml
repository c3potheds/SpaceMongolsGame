///str_format(formatString, *args)
/*
    This is a magical script that lets you format strings Python-style.
    
    str_format('Hello, {}!', 'world') returns 'Hello, world!'
    str_format('Hello, {}!', 123) returns 'Hello, 123!'
*/

var formatString = argument[0];

for (var i = 1; i < argument_count; i++) {
    var pos = string_pos('@', formatString);
    if (pos != 0) {
        formatString = string_copy(formatString, 1, pos - 1) + 
                string(argument[i]) + 
                string_copy(formatString, pos + 1, 
                string_length(formatString) - pos);
    }
}
return formatString;