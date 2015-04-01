///build_button(name, *components)

var name = argument[0];

var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_gui_button);
builder_addData(builder, 'name', name);
builder_addComponents(builder, array_sliceFrom(argument, 1));
builder_dataHandler(builder, _build_button_dataHandler);
builder_componentHandler(builder, build_button_componentHandler);
return builder;