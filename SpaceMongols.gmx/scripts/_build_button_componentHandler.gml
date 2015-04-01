///_build_button_componentHandler(object, component)

var object = argument0;
var component = argument1;

switch (component.object_index) {
    case obj_build:
        switch (component.type) {
            case 'text color':
                gui_component_set_text_color(object, component.data, c_black);
                break;
            case 'sprite':
                gui_component_set_sprite(object, component.data);
                break;
            case 'width':
                gui_component_set_width(object, component.data);
                break;
            case 'callback':
                script_execute_argv(gui_button_set_action, component.data);
                break;
        }
        with (component) {
            instance_destroy();
        }
}