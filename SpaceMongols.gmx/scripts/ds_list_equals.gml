///ds_list_equals(list1, list2, type)

var list1 = argument0;
var list2 = argument1;
var type = argument2;
if (ds_list_size(list1) != ds_list_size(list2)) {
    return false;
}
for (var i = 0; i < ds_list_size(list1); i++) {
    if (!equals(list1[|i], list2[|i], type)) {
        return false;
    }
}
return true;
