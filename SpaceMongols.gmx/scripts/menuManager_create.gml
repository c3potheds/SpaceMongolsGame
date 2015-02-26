///menuManager_create(startingMenu)

var new = instance_create(0,0,obj_menuManager);
new.menuStack = ds_stack_create();
new.currentMenu = argument0;
menu_enter(new.currentMenu);
return new;
