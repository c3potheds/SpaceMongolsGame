/*
    argument0: menu
    argument1: frame
*/

with (argument0) {
    var i;
    for (i=0;i<ds_list_size(components);i++) {
        var component;
        component = ds_list_find_value(components,i);
        frame_add_object(argument1,component);
        component.visible = true;
        if (instanceof(component,obj_gui_menu)) {
            gui_menu_attach_components_to_frame(component,argument1);
        }
    }
}
