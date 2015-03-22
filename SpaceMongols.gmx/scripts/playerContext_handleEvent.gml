///playerContext_handleEvent(player, event)
/*
    Handles the given obj_planetEvent and updates the .perceivedGalaxy’s 
    planets accordingly. If the obj_planetEvent represents this 
    obj_playerContext.fleet arriving at a planet, depending on the allegiance 
    of the planet, the .handlerArriveFriendlyPlanet or .handlerPotentialBattle 
    callback is called. If the obj_planetEvent represents a battle engagement 
    at the obj_playerContext’s current planet, the .controller’s 
    .handlerPotentialBattle callback is called.
*/

var player = argument0;
var event = argument1;
with (player) {
    switch (event.type) {
        case 'fleet departed':
            galaxy_addTransit(perceivedGalaxy, transit_create(event.fleet,
                    event.planet, event.destination, event.fleet.x, 
                    event.fleet.y));
            break;
        case 'construction scheduled':
            galaxy_scheduleConstruction(perceivedGalaxy, event.planet, 
                    event.construction);
            break;
        case 'construction cancelled':
            galaxy_cancelConstruction(perceivedGalaxy, event.planet,
                    event.construction);
        case 'battle':
            galaxy_engageBattle(perceivedGalaxy, event.planet, event.fleet);
            break;
        
    }
}
