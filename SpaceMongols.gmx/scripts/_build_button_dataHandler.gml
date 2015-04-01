///_build_button_dataHandler(object, key, value)

var object = argument0;
var key = argument1;
var value = argument2;

switch (key) {
    case 'name':
        gui_component_set_text(object, value);
        break;
}