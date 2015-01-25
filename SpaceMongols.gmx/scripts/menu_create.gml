#define menu_create
///menu_create(object)

var new = instance_create(0,0,argument0);
new.buttons = ds_list_create();
new.visible = false;
return new;

#define menu_build
///menu_build(menu)

with (argument0) {
    event_perform(ev_other,ev_user0);
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
    visible = false;
    for (var i=0;i<ds_list_size(buttons);i++) {
        var button = buttons[|i];
        button.visible = false;
    }
}

#define menu_enter
///menu_enter(menu)

with (argument0) {
    visible = true;
    for (var i=0;i<ds_list_size(buttons);i++) {
        var button = buttons[|i];
        button.visible = true;
    }
}

#define menu_draw
///menu_draw(menu)

with (argument0) {
    //draw_self();
    for (var i=0;i<ds_list_size(buttons);i++) {
        button_draw(buttons[|i]);
    }
}

#define menu_addButton
///menu_addButton(menu, button)

with (argument0) {
    ds_list_add(buttons,argument1);
}
