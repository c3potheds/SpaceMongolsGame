///transit_arrive(transit)

//TODO: Make it so this works for any fleet, not just playerContext fleets

with (argument0) {
    for (var i = 0; i < ds_list_size(fleet.ships); i++) {
        var ship = fleet.ships[|i];
        ship.mode = "orbit";
        ship_orbit(ship, destination.x, destination.y);
    }
    if (planet_isFriendly(destination, fleet.faction)) {
        //Put this context.fleet on the planet
        planet_addFleet(destination, fleet);
        destination.image_index = fleet.faction.skin;
        menuManager_goto(obj_gameManager.menuManager, menu_friendly);
    }
    else {
        menuManager_goto(obj_gameManager.menuManager, menu_battle);
    }
    obj_gameManager.playerContext.currentPlanet = destination;
    context.x = destination.x;
    context.y = destination.y;
    instance_destroy();
}