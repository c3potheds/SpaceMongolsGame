#define menuManager_create
///menuManager_create(startingMenu)

var new = instance_create(0,0,obj_menuManager);
new.menuStack = ds_stack_create();
new.currentMenu = argument0;
menu_enter(new.currentMenu);
return new;

#define menuManager_update
///menuManager_update(menuManager)

menu_update(argument0,argument0.currentMenu);

#define menuManager_push
///menuManager_push(menuManager, menu)

with (argument0) {
    menu_exit(currentMenu);
    ds_stack_push(menuStack, currentMenu);
    currentMenu = argument1;
    menu_enter(currentMenu);
}

#define menuManager_pop
///menuManager_pop(menuManager)

with (argument0) {
    menu_exit(currentMenu);
    currentMenu = ds_stack_pop(menuStack);
    menu_enter(currentMenu);
}

#define menuManager_goto
///menuManager_goto(menuManager, menu)

with (argument0) {
    menu_exit(currentMenu);
    currentMenu = argument1;
    menu_enter(currentMenu);
    ds_stack_clear(menuStack);
}

#define menuManager_draw
///menuManager_draw(menuManager)

with (argument0) {
    menu_draw(currentMenu);
}
