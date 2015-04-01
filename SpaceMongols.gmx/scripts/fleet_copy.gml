///fleet_copy(fleet)
/*
    Creates a copy of the given fleet. This is necessary for making fleets
    visible to multiple players, because of how each player has its own view
    of the galaxy.
*/

var fleet = argument0;
with (fleet) {
    var copy = instance_copy(false);
}
with (copy) {
    ships = ds_map_create();
    ds_map_copy(ships, fleet.ships);
}
return copy;
