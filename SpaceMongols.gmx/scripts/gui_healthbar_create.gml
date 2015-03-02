/*
    argument0: health
    argument1: maxhealth
*/

var h;
h = instance_create(0,0,obj_gui_healthbar);
h.value = argument0;
h.maxvalue = argument1;
return h;
