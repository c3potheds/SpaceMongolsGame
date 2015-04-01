///fleet_create(planet, faction)


//OLD VERSION
///fleet_create(numberOfShips, fuel, hasFlagship, x, y)

var new = instance_create(argument4, argument5, obj_fleet);
new.faction = argument0;
new.numberOfShips = argument1;
new.fuel = argument2;
new.hasFlagship = argument3;
new.ships = ds_list_create();
return new;

/*

//NEW VERSION
var planet = argument0;
var faction = argument1;

var new = instance_create(planet.x, planet.y, obj_fleet);
new.ships = ds_map_create();
new.faction = faction;
planet_addFleet(planet, new);
return new;
*/
