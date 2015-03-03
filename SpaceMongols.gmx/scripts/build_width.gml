///build_width(width)
/*
    Returns a builder that, when made a component to a gui component builder,
    makes the resultant gui component have the given width. Whether "width"
    refers to the vertical or horizontal axis depends on the .align property.
*/

var builder = instance_create(0, 0, obj_builder);
var align = argument0;
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'component width');
builder_addData(builder, 'data', align);
builder_dataHandler(builder, builder_defaultDataHandler);
return builder;
