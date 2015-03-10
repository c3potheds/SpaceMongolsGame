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