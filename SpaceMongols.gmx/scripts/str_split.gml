///str_split(string, pivot)
/*
    Python-style!
    
    str_split('One, two, three', ', ') returns ['One', 'two', 'three']
    str_split('Thing-a-ma-bob', '-') returns ['Thing', 'a', 'ma', 'bob']
*/

var str = argument0;
var pivot = argument1;
var result = ds_list_create();
var occurrences = string_count(pivot, str);
var pos = 1;
for (var i = 0; i <= occurrences; i++) {
    pos = string_pos(pivot, str);
    if (pos == 0) {
        pos = string_length(str)+1;
    }
    ds_list_add(result, string_copy(str, 1, pos-1));
    if (i < occurrences) {
        str = string_copy(str, pos+1, string_length(str));
    }
}
return result;
