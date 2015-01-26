#define fleet_create
///fleet_create(faction, numberOfShips, fuel, hasFlagship, x, y)

var new = instance_create(argument4,argument5,obj_fleet);
new.faction = argument0;
new.numberOfShips = argument1;
new.fuel = argument2;
new.hasFlagship = argument3;
new.ships = ds_list_create();
return new;

#define fleet_buildView
///fleet_buildView(fleet, numberOfShips)

with (argument0) {
    for (var i=0;i<argument1;i++) {
        var newShip = instance_create(x,y,obj_ship);
        newShip.image_index = faction.skin;
        newShip.fleet = id;
        ship_orbit(newShip,x,y);
        ds_list_add(ships, newShip);
    }
}

#define fleet_combine
///fleet_combine(source, destination)

if (argument0 == noone) {
    return argument1;
}
if (argument0.faction != argument1.faction) {
    show_error("Fleets to combine must be from the same faction",true);
}
with (argument1) {
    numberOfShips += argument0.numberOfShips;
    hasFlagship |= argument0.hasFlagship;
}

#define fleet_destroy_ship
///fleet_destroy_ship(fleet)

with (argument0) {
    if (ds_list_size(ships) > 0) {
        i = ds_list_size(ships)-1;
        with (ships[|i]) {
            effect_create_above(ef_firework,x,y,0,choose(c_yellow,c_orange));
            instance_destroy();
        }
        ds_list_delete(ships,i);
    }
}
