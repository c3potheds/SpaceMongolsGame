#define fleet_create
///fleet_create(faction, numberOfShips, fuel, hasMothership, x, y)

var new = instance_create(argument4,argument5,obj_fleet);
new.faction = argument0;
new.numberOfShips = argument1;
new.fuel = argument2;
new.hasMothership = argument3;
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
