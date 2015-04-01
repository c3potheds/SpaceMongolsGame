///build_label(name, *components)

var name = argument[0];
var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_gui_label);
builder_addData(builder, 'name', name);
builder_addComponents(builder, array_sliceFrom(argument0, 1));
builder_dataHandler(builder, _build_label_dataHandler);
builder_componentHandler(builder, _build_label_componentHandler);
return builder;
