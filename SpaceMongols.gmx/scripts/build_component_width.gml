///build_width(width)
/*
    Returns a builder that, when made a component to a gui component builder,
    makes the resultant gui component have the given width. Whether "width"
    refers to the vertical or horizontal axis depends on the .align property.
*/

var width = argument0;

var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'width');
builder_addData(builder, 'data', width);
builder_dataHandler(builder, builder_defaultDataHandler);
return builder;
