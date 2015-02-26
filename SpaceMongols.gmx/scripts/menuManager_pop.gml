///menuManager_pop(menuManager)

with (argument0) {
    menu_exit(currentMenu);
    currentMenu = ds_stack_pop(menuStack);
    menu_enter(currentMenu);
}