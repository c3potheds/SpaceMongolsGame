///planet_create(x, y, name, description)

var new;
new = instance_create(argument0, argument1, obj_planet);
new.name = argument2;
new.description = argument3;
new.fleet = noone;
return new;
