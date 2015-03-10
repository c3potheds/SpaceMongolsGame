///Array(*items)

var result;
if (argument_count == 0) {
    show_error('Cannot create an empty array', true);
}
for (var i = argument_count-1; i >= 0; i--) {
    result[i] = argument[i];
}
return result;