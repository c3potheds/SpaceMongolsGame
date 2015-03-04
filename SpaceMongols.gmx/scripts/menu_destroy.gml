///menu_destroy(menu)

with (argument0) {
    visible = false;
    for (var i=0; i < ds_list_size(buttons); i++) {
        var button = buttons[|i];
        
        with (button) {
            // destroying the button
            instance_destroy();
        }
    }
    
    // destroying the menu
    instance_destroy();
}
