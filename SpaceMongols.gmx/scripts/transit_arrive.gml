///transit_arrive(transit)

with (argument0) {
    for (var i=0;i<ds_list_size(context.fleet.ships);i++) {
        var ship = context.fleet.ships[|i];
        ship.mode = "orbit";
        ship_orbit(ship,destination.x,destination.y);
    }
    if (planet_isFriendly(destination,context.fleet.faction)) {
        //Put this context.fleet on the planet
        planet_addFleet(destination,context.fleet);
        destination.image_index = context.fleet.faction.skin;
        menuManager_goto(obj_gameManager.menuManager,menu_friendly);
    }
    else {
        menuManager_goto(obj_gameManager.menuManager,menu_battle);
    }
    obj_gameManager.playerContext.currentPlanet = destination;
    context.x = destination.x;
    context.y = destination.y;
    instance_destroy();
}
