///str_lstrip(string, prefix)

if (str_startsWith(argument0, argument1)) {
    return string_copy(argument0, string_length(argument1)+1, string_length(argument0));
}
else {
    return argument0;
}
