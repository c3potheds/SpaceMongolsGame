///ds_list_filter(list, script, *args)
/*
    Given a script that takes a single item as an argument, returns a list
    containing only the items in the original list for which the script
    returns true.
*/

var list = argument[0];
var script = argument[1];
var args;
for (var i = argument_count-1; i >= 2; i--) {
    args[i-2] = argument[i];
}
var result = ds_list_create();

for (var i = 0; i < ds_list_size(list); i++) {
    if (argument_count > 2) {
        if (script_execute_argv(script, array_add(Array(list[|i]), args))) {
            ds_list_add(result, list[|i]);
        }
    }
    else if (script_execute(script, list[|i])) {
        ds_list_add(result, list[|i]);
    }
}
return result;