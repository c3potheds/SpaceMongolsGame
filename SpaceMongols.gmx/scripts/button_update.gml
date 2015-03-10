///button_update(menuManager, button)

with (argument1) {
    if (visible) {
        if (window_mouse_get_x() >= x && window_mouse_get_y() >=y && 
                window_mouse_get_x() <= x+sprite_width &&
                window_mouse_get_y() <= y+sprite_height) {
            image_index = 1;
            if (mouse_check_button(mb_left)) {
                image_index = 2;
            }        
            if (mouse_check_button_released(mb_left)) {
                image_index = 1;
                script_execute(callback, argument0);
            }
        }
        else {
            image_index = 0;
        }
    }
}