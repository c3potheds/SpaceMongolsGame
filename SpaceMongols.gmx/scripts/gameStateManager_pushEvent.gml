///gameStateManager_pushEvent(gsm, event)
/*
    Called internally ONLY by obj_gameStateManager.
    
    Pushes the event to the event queues of all playerContexts in the
    gameStateManager.
*/

var gsm = argument0;
var event = argument1;

with (gsm) {
    var playerContext = ds_map_find_first(playerContexts);
    var eventCopy;
    //Put a copy of the event on every playerContext's event buffer
    for (var i = 0; i < ds_map_size(playerContexts); i++) {
        //Shallow copy the event so that cleanup is easier once an event is 
        //processed
        with (event) {
            eventCopy = instance_copy(false);
        }
        ds_list_add(playerContexts[?playerContext], eventCopy);
        playerContext = ds_map_find_next(playerContexts, playerContext);
    }
    //Destroy the original copy of the event, since it isn't in an event buffer
    with (event) {
        instance_destroy();
    }
}
