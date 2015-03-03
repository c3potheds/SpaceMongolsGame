///gui_menu_set_position(menu, position)
/*
    Sets the position of the menu within the screen. The position parameter is
    an OR-ed set of constants including BOTTOM, TOP, LEFT, RIGHT, and CENTER.
    
    The menu will be placed on the corner or side of the screen corresponding
    to the position. All components of the menu will have their positions
    updated.
*/

var menu = argument0;
var position = argument1;

with (menu) {
    if (position | BOTTOM) {
        if (orientation == GUI_ORIENTATION_VERTICAL) {
            y = view_hview - gui_menu_get_height(menu);
        }
        else if (orientation == GUI_ORIENTATION_HORIZONTAL) {
            y = view_hview - width;
        }
    }
    else if (position | TOP) {
        y = 0;
    }
    if (position | LEFT) {
        x = 0;
    }
    else if (position | RIGHT) {
        if (orientation == GUI_ORIENTATION_VERTICAL) {
            x = view_wview - width;
        }
        else if (orientation == GUI_ORIENTATION_HORIZONTAL) {
            x = view_wview - gui_menu_get_height(menu);
        }
    }
    gui_menu_update_positions(menu);
}
