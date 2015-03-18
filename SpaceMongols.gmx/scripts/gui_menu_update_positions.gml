//argument0: menu

with (argument0) {
    var i, h;
    h = 0;
    for (i=0;i<ds_list_size(components);i++) {
        var component;
        component = ds_list_find_value(components,i);
        if (orientation == GUI_ORIENTATION_VERTICAL) {
            component.orientation = GUI_ORIENTATION_HORIZONTAL;
            component.x = x;
            component.y = y+h;
            component.image_xscale = width / 
                    sprite_get_width(component.sprite_index);
            component.image_yscale = component.width / 
                    sprite_get_height(component.sprite_index);
            //Increase this menu's own height to fit the new component
            h += component.width;
            image_yscale = h/sprite_get_height(sprite_index);
        }
        else if (orientation == GUI_ORIENTATION_HORIZONTAL) {
            component.orientation = GUI_ORIENTATION_VERTICAL;
            component.x = x+h;
            component.y = y;
            component.image_xscale = component.width / 
                    sprite_get_width(component.sprite_index);
            component.image_yscale = width / 
                    sprite_get_height(component.sprite_index);
            //Increase this menu's own height to fit the new component
            h += component.width;
            image_xscale = h / sprite_get_width(sprite_index);
        }
        if (instanceof(component,obj_gui_menu)) {
            gui_menu_update_positions(component);
        }
    }
}
