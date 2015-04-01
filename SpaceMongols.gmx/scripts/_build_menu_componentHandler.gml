///_build_menu_componentHandler(object, component)

var object = argument0;
var component = argument1;

with (object) {
    switch (component.object_index) {
        case obj_gui_button:
        case obj_gui_label:
        case obj_gui_menu:
            gui_menu_add_component(object, component);
            break;
        case obj_build:
            switch (component.type) {
                case 'menu orientation':
                    gui_component_set_orientation(object, component.data);
                    gui_menu_update_positions(object);
                    break;
                case 'menu position':
                    gui_menu_set_position(object, component.data);
                    break;
                case 'menu align':
                    //TODO
                    break;
                case 'menu controller':
                    gui_menu_set_controller(object, component.data);
                    break;
            }
            with (component) {
                instance_destroy();
            }
        
    }
}