///gameStateManager_tick(gsm)
/*
    Advance the local calendar dates for all unlocked obj_realTime objects.
*/

var gsm = argument0;
with (gsm) {
    for (var i = 0; i < ds_list_size(realTimeObjects); i++) {
        var rt = realTimeObjects[|i];
        if (rt.realTime && !rt.locked) {
            if (rt.tick != undefined) {
                script_execute(rt.tick, gsm, rt);
            }
            rt.localTime++;
        }
    }
    gameStateManager_updateLocks(gsm);
}
