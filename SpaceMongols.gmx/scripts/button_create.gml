///button_create(label, x, y, w, h, labelColor, hint, callback)

var new = instance_create(0,0,obj_button);
with (new) {
    new.label = argument0;
    new.visible = false;
    new.x = argument1;
    new.y = argument2;
    new.image_xscale = argument3/sprite_width;
    new.image_yscale = argument4/sprite_height;
    new.labelColor = argument5;
    new.hint = argument6;
    new.callback = argument7;
}
return new;
