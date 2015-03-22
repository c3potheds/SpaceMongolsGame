///transit_create(fleet, originPlanet, destinationPlanet, x, y)

var new = instance_create(argument3, argument4, obj_transit);
with (new) {
    fleet = argument0;
    origin = argument1;
    destination = argument2;
    for (var i = 0; i < ds_list_size(fleet.ships); i++) {
        var ship = fleet.ships[|i];
        ship.formx = random_range(-100, 100);
        ship.formy = random_range(-100, 100);
        ship.transit = new;
        ship.mode = "transit";
        with (ship){
            path_end();
        }
    }
    move_towards_point(destination.x, destination.y, speedOfLight);
    image_angle = direction;
}
