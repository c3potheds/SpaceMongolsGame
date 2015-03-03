///gui_button_update(button)

with (argument0) {
    if (visible) {
        if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(),
                x, y, x+sprite_width, y+sprite_height)) {
            image_index = 1;
            if (mouse_check_button(mb_left)) {
                image_index = 2;
            }        
            if (mouse_check_button_released(mb_left)) {
                image_index = 1;
                if (script_exists(action)) {
                    script_execute(action, argument0);
                }
            }
        }
        else {
            image_index = 0;
        }
    }
}
