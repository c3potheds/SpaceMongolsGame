/*
    Attaches the given menu and all its components to the given frame. If the menu contains more menus,
    recursively go through its components until all children of this menu are updated. This script NEEDS
    to be called to have an interactive menu.
    
    The menu will position itself in the upper-left corner of the frame, so keep that in mind when designing
    menus.

    argument0: menu
    argument1: frame
*/

with (argument0) {
    x = frame_get_x(argument1);
    y = frame_get_y(argument1);
    gui_menu_update_positions(id);
    frame_add_object(argument1,id);
    gui_menu_attach_components_to_frame(id,argument1);
}
