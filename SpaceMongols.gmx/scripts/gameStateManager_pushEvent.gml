///gameStateManager_pushEvent(gsm, event)
/*
    Called inside gameStateManager_pushAction() for actions that map 1:1 to
    certain events.
    
    Called by instances of obj_realTime (except obj_playerContexts, which 
    should only use gameStateManager_pushAction()) in their .tick scripts. 
    Events are handled by gsm agnostically (that is, gsm doesn’t care what kind 
    of event they are, the way it does with obj_playerActions). When 
    obj_playerContexts tick, they will be pushed events according to how far 
    away they are, when they happened, and whether the planet is visible to 
    them.
*/

var gsm = argument0;
var event = argument1;
