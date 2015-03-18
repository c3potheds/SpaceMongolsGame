///build_menu_orientation(orientation)
/*
    Returns a builder that, when made a component to a menu builder, makes
    the resulting menu take the given orientation.
*/

var orientation = argument0;
var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'menu orientation');
builder_addData(builder, 'data', orientation);
builder_componentHandler(builder, builder_defaultComponentHandler);
builder_dataHandler(builder, builder_defaultDataHandler);
return builder;
