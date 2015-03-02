/*

    argument0: menu
    argument1: component
*/

with (argument0) {
    ds_list_add(components,argument1);
    gui_component_set_orientation(argument1,orientation);
    argument1.parent = id;
    argument1.depth = depth-1;
    if (orientation == GUI_ORIENTATION_VERTICAL) {
        argument1.orientation = GUI_ORIENTATION_HORIZONTAL;
        argument1.x = x;
        argument1.y = y+height;
        argument1.image_xscale = width/sprite_get_width(argument1.sprite_index);
        argument1.image_yscale = argument1.width/sprite_get_height(argument1.sprite_index);
        //Increase this menu's own height to fit the new component
        height += argument1.width;
        image_yscale = height/sprite_get_height(sprite_index);
    }
    else if (orientation == GUI_ORIENTATION_HORIZONTAL) {
        argument1.orientation = GUI_ORIENTATION_VERTICAL;
        argument1.x = x+height;
        argument1.y = y;
        argument1.image_xscale = argument1.width/sprite_get_width(argument1.sprite_index);
        argument1.image_yscale = width/sprite_get_height(argument1.sprite_index);
        //Increase this menu's own height to fit the new component
        height += argument1.width;
        image_xscale = height/sprite_get_width(sprite_index);
    }
    
}
