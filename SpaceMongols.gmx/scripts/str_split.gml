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
if (occurrences == 0) {
    ds_list_add(result, str);
}
for (var i = 0; i < occurrences; i++) {
    var pos = string_pos(pivot, str);
    ds_list_add(result, string_copy(str, 1, pos));
    str = string_copy(str, pos+1, string_length(str)); 
}
return result;
