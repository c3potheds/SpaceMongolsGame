/*
    This script safely changes the sprite of the component. Use this script 
    instead of changing the object's sprite_index variable, because if the new 
    sprite is different from the old sprite, its scaling has to be updated so 
    the button remains the same size (if you want to change the size, use 
    component_set_width())
    
    As an aside, obj_gui_button requires that its sprite has 3 subimages. The 
    first is the button's normal appearance. The second is the button's 
    appearance when the mouse is hovering over it. The third is the button's 
    appearance when the left mouse button is pressing down on it.
    
    argument0: component
    argument1: sprite
*/

with (argument0) {
    sprite_index = argument1;
    if (orientation == GUI_ORIENTATION_VERTICAL) {
        image_xscale = width/sprite_get_width(sprite_index);
        if (parent != noone) {
            image_yscale = parent.width/sprite_get_height(sprite_index);
        }
    }
    else if (orientation == GUI_ORIENTATION_HORIZONTAL) {
        image_yscale = width/sprite_get_height(sprite_index);
        if (parent != noone) {
            image_xscale = parent.width/sprite_get_width(sprite_index);
        }
    }
}
