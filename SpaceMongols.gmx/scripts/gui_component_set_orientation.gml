/*
    Sets the component orientation, either vertical or horizontal.
    The orientation determines the direction that the component stretches to fit the menu
    If the menu is horizontal, "width" refers to the vertical direction
    If the menu is vertical, "width" refers to the horizontal direction
    This script does NOT support proper updating of menus that have been populated. Figure out
    the orientation of menus BEFORE you add their components.
*/
//argument0: component
//argument1: orientation (GUI_ORIENTATION_VERTICAL or GUI_ORIENTATION_HORIZONTAL)

with (argument0) {
    orientation = argument1;
}
