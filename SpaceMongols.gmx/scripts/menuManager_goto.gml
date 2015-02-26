///menuManager_goto(menuManager, menu)

with (argument0) {
    menu_exit(currentMenu);
    currentMenu = argument1;
    menu_enter(currentMenu);
    ds_stack_clear(menuStack);
}