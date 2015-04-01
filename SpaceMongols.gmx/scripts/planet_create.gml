///planet_create(x, y, name, description)

var xx = argument0;
var yy = argument1;
var name = argument2;
var description = argument3;

var new = instance_create(xx, yy, obj_planet);
new.name = name;
new.description = description;
new.fleet = noone;
return new;
