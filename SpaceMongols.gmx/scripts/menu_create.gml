#define menu_create
///menu_create(object)

var new = instance_create(0,0,argument0);
new.buttons = ds_list_create();

#define menu_build
///menu_build(menu)

with (argument0) {
    event_perform(ev_user0,0);
}

#define menu_update
///menu_update(menuManager, menu)

with (argument1) {
    for (var i=0;i<ds_list_size(buttons);i++) {
        button_update(argument0,buttons[|i]);
    }
}

#define menu_exit
///menu_exit(menu)

with (argument0) {
    for (var i=0;i<ds_list_size(buttons);i++) {
        var button = buttons[|i];
        button.visible = false;
    }
}

#define menu_enter
///menu_enter(menu)

with (argument0) {
    for (var i=0;i<ds_list_size(buttons);i++) {
        var button = buttons[|i];
        button.visible = true;
    }
}

#define menu_draw
///menu_draw(menu)

with (argument0) {
    for (var i=0;i<ds_list_size(buttons);i++) {
        button_draw(buttons[|i]);
    }
}
