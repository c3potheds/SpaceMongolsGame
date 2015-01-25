#define button_create
///button_create(label, x, y, w, h, labelColor, hint, callback)

var new = instance_create(0,0,obj_button);
new.visible = false;
new.x = argument1;
new.y = argument2;
new.sprite_width = argument3;
new.sprite_height = argument4;
new.labelColor = argument5;
new.hint = argument6;
new.callback = argument7;
return new;

#define button_update
///button_update(menuManager, button)

with (argument1) {
    if (visible) {
        x = vx;
        y = vy;
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

#define button_draw
///button_draw(button)

with (argument0) {
    draw_self();
    draw_set_color(labelColor);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_text(x+sprite_width/2+(sprite_index==1),
            y+sprite_height/2+(sprite_index==1),label);
    if (sprite_index == 1) {
        draw_hint(hint);
    }
}
