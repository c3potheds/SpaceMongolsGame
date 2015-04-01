///build_component_sprite(sprite)

var sprite = argument0;

var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'sprite');
builder_addData(builder, 'data', sprite);
builder_dataHandler(builder, builder_defaultDataHandler);
builder_componentHandler(builder, builder_defaultComponentHandler);
return builder;