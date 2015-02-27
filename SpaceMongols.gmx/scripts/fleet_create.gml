///fleet_create(faction, numberOfShips, fuel, hasFlagship, x, y)

var new = instance_create(argument4,argument5,obj_fleet);
new.faction = argument0;
new.numberOfShips = argument1;
new.fuel = argument2;
new.hasFlagship = argument3;
new.ships = ds_list_create();
return new;