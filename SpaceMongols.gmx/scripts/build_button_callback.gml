///build_button_callback(callback, *args)

var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'callback');
builder_addData(builder, 'data', argument);
builder_dataHandler(builder, builder_defaultDataHandler);
builder_componentHandler(builder, builder_defaultComponentHandler);
return builder;