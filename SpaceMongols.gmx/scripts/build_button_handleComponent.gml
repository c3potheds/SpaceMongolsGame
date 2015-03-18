#define build_button
///build_button(name, *components)

var name = argument[0];
var builder = instance_create(0, 0, obj_builder);
builder_type(builder, obj_button);
builder_addData(builder, 'name', name);
builder_addComponents(builder, array_sliceFrom(argument, 1));
builder_dataHandler(builder, build_button_handleData);
builder_componentHandler(builder, build_button_handleComponent);
return builder;

#define build_button_handleData
///build_button_handleData(object, key, value)

var object = argument0;
var key = argument1;
var value = argument2;
with (object) {
    switch (key) {
        case 'name':
            gui_component_set_text(object, value);
            break;
    }
}

#define build_button_handleComponent
///build_button_handleComponent(object, component)

var object = argument0;
var component = argument1;

with (object) {
    switch (component.object_index) {
        case obj_build:
            switch (component.type) {
                case 'sprite':
                    gui_component_set_sprite(object, component.data);
                    break;
                case 'width':
                    gui_component_set_width(object, component.data);
                    break;
                case 'text color':
                    gui_component_set_text_color(object, component.data);
                    break;
                case 'font':
                    gui_component_set_font(object, component.data);
                    break;
                case 'callback':
                    gui_button_set_action(object, component.callback, component.args);
            }
    }
}
