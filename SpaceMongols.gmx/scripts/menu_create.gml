///menu_create(object)

var new = instance_create(0, 0, argument0);
new.buttons = ds_list_create();
new.visible = false;
return new;