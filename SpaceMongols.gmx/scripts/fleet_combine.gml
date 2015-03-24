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
return argument1;
