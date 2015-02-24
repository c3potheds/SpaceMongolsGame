#define planet_create
///planet_create(x, y, name, description)

var new;
new = instance_create(argument0, argument1, obj_planet);
new.name = argument2;
new.description = argument3;
new.fleet = noone;
return new;

#define planet_isFriendly
///planet_isFriendly(planet, faction)

with (argument0) {
    if (fleet == noone) {
        return true;
    }
    return fleet.faction == argument1;
}

#define planet_addFleet
///planet_addFleet(planet, fleet)

with (argument0) {
    fleet_combine(fleet,argument1);
}