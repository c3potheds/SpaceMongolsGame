///build_menu_position(position)
/*
    Returns a builder that, when made a component to a menu builder, makes
    the resulting menu have the given position at its top-left corner.
    
    position is an OR-ed subset of {BOTTOM, RIGHT, TOP, LEFT, CENTER}
*/

var position = argument0;
var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'menu position');
builder_addData(builder, 'data', position);
builder_dataHandler(builder, builder_defaultDataHandler);
return builder;