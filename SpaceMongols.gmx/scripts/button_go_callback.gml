///button_go_callback(menuManager)

if (obj_planetSelection.planet != obj_gameManager.playerContext.currentPlanet) {
    with (obj_menu_planet_popup) {
        menu_destroy(id)
    }
    var transit = transit_create(
            obj_gameManager.playerContext.fleet, 
            obj_gameManager.playerContext.currentPlanet, 
            obj_planetSelection.planet, 
            obj_gameManager.playerContext.x, 
            obj_gameManager.playerContext.y);
    transit.context = obj_gameManager.playerContext;
    worldView_addTransit(obj_gameManager.galaxy, transit);
    menuManager_goto(argument0, menu_transit);
    
}
