///gui_button_set_action(button, callback, *args)
/*
    argument0: button
    argument1: script to be executed when button is clicked
    argument2: arguments (optional)
*/

with (argument[0]) {
    action = argument[1];
    if (argument_count > 2) {
        args = argument2;
    }
    else {
        args = undefined;
    }
}
