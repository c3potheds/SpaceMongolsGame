///button_go_callback(menuManager)

if (obj_planetSelection.planet != obj_gameManager.playerContext.currentPlanet) {

galaxy_addTransit(obj_gameManager.galaxy, transit_create(
        obj_gameManager.playerContext, 
        obj_gameManager.playerContext.currentPlanet, 
        obj_planetSelection.planet, 
        obj_gameManager.playerContext.x, 
        obj_gameManager.playerContext.y));
menuManager_goto(argument0,menu_transit);
with (obj_menu_planet_popup) {
    menu_destroy(id)
}
}