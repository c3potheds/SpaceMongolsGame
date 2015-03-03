/*
    Sets the transparency of the text for the given component. (1=opaque,0=invisible)
    
    argument0: component
    argument1: alpha
*/

with (argument0) {
    text_alpha = argument1;
    if (instanceof(id,obj_gui_menu)) {
        var i;
        for (i=0;i<ds_list_size(components);i++) {
            gui_component_set_text_alpha(ds_list_find_value(components,i),argument1);
        }
    }
}
