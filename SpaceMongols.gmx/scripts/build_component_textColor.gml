///build_component_textColor(color)

var color = argument0;

var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'text color');
builder_addData(builder, 'data', color);
builder_dataHandler(builder, builder_defaultDataHandler);
builder_componentHandler(builder, builder_defaultComponentHandler);
return builder;