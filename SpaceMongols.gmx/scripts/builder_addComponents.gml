///builder_addComponents(builder, components)
/*
    Adds all of the components in the given components array to the builder.
*/
var builder = argument0;
var componentArray = argument1;
with (builder) {
    for (var i = 1; i < array_length_1d(componentArray); i++) {
        ds_list_add(components, componentArray[i]);
    }
}