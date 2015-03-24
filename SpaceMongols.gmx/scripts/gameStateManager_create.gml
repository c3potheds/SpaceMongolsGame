///gameStateManager_create(playerContexts)
/*
    Creates an obj_gameStateManager with the given list of obj_playerContexts
    and the given obj_galaxy.
    
    argument0: playerContexts : ds_list(obj_playerContext)
        A list of obj_playerContexts with one entry for each player in the
        game. This list is copied by reference, so don't destroy it!
    argument1: galaxy : obj_galaxy
        An obj_galaxy describing the initial canonical configuration of the
        map.
*/

var playerContexts = argument0;
var gsm = instance_create(0, 0, obj_gameStateManager);
gsm.playerEvents = ds_map_create();
for (var i = 0; i < ds_list_size(playerContexts); i++) {
    var player = playerContexts[|i];
    gsm.playerEvents[?player] = ds_list_create();
}
//Create initial events to describe the initial placement of all players
for (var i = 0; i < ds_list_size(playerContexts); i++) {
    var viewingPlayer = playerContexts[|i];
    gameStateManager_pushAction(gsm, playerAction_initialFleet(player, 
            player.fleet.planet, player.fleet));
}
gameStateManager.ansible = true;

return gameStateManager;