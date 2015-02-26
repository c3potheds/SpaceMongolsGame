///menuManager_push(menuManager, menu)

with (argument0) {
    menu_exit(currentMenu);
    ds_stack_push(menuStack, currentMenu);
    currentMenu = argument1;
    menu_enter(currentMenu);
}