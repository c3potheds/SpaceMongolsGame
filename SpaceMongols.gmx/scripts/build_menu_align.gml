///button_menu_align(align)
/*
    Returns a builder that, when made a component to a menu builder, makes the
    resulting menu align its components in the given way.
*/

var builder = instance_create(0, 0, obj_builder);
var align = argument0;
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'menu align');
builder_addData(builder, 'data', align);
builder_dataHandler(builder, builder_defaultDataHandler);
return builder;
