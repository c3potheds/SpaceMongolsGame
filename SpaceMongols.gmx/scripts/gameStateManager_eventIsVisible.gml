///gameStateManager_eventIsVisible(gsm, player, event)
/*
    Returns true if player should be able to see event right now, given their 
    relative proximity and local times. Used as a utility in 
    gameStateManager_tick() when figuring out what players and events to call 
    playerContext_handleEvent() for.
*/

var gsm = argument0;
var player = argument1;
var event = argument2;
with (gsm) {
    if (ansible) {
        return true;
    }
    if (player.localTime - event.localTime < distanceInLightYears(player, event)) {
        return true;
    }
    else {
        return false;
    }
}
