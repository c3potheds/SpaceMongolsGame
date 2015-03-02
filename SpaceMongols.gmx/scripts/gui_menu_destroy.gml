/*
    Safely and deeply destroys a menu. This includes removing and destroying all of the menu's components, so
    there are no stray objects hanging.
    
    argument0: menu
*/

with (argument0) {
    var i;
    for (i=0;i<ds_list_size(components);i++) {
        var component;
        component = ds_list_find_value(components,i);
        if (instanceof(component,obj_gui_menu)) {
            gui_menu_destroy(component);
        }
        else {
            with (component) {
                instance_destroy();
            }
        }
    }
    ds_list_destroy(components);
    instance_destroy();
}
