///planet_isFriendly(planet, faction)

with (argument0) {
    if (fleet == noone) {
        return true;
    }
    return fleet.faction == argument1;
}