///gameStateManager_pushAction(gsm, action)
/*
    Called by obj_playerContexts (human, computer, or server) to indicate that 
    an action is taken and committed. This should be the ONLY means by which 
    an obj_playerContext causes a change to the game world.
*/

var gsm = argument0;
var action = argument1;
with (gsm) {
    switch (action.type) {
        case 'hibernate':
            action.playerContext.realTime = true;
            break;
        case 'stop hibernating':
            break;
        case 'travel':
            if (action.fleet == action.playerContext.fleet) {
                action.playerContext.realTime = true;
            }
            break;
        case 'schedule construction':
            break;
        case 'cancel construction':
            break;
        case 'split fleet':
            break;
        case 'send command':
            break;
        case 'engage':
            break;
    }
}
