///List(item1, ..., item n)
/*
    Creates a list out of the arguments. A nice shorthand for quickly
    making a list.
*/

var list = ds_list_create();
for (var i = 0; i < argument_count; i++) {
    ds_list_add(list, argument[i]);
}
return list;
