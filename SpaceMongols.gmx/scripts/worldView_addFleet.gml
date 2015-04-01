///worldView_addFleet(worldView, planet, fleet)
/*
    Makes a copy of the given fleet and puts the copy in the worldView at the
    given planet. This is only called in response to the circle of visibility
    of other factions' initial fleets reaching the player. All other updates
    to fleets are handled by worldView_scheduleConstruction()
*/

var worldView = argument0;
var planet = argument1;
var fleet = argument2;

with (worldView) {
    planet_addFleet(planets[?planet], fleet_copy(fleet));
}
