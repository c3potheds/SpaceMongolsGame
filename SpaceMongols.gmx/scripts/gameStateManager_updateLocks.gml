///gameStateManager_updateLocks(gsm)
/*
    Called when an obj_playerContext toggles its .realTime property. Iterates 
    through all obj_playerContexts that have their .locked property set to 
    true, and calculates whether to keep locked or to unlock.
*/

var gsm = argument0;
with (gsm) {
    for (var i = 0; i < ds_list_size(realTimeObjects); i++) {
        var rt = realTimeObjects[|i];
        rt.locked = false;
        if (rt.realTime) {
            //If there exists another real time object rt2 such that the
            //distance between rt and rt2 is less than the time offset between
            //them, and rt2 is not in real time or rt2 is locked, lock rt 
            for (var u = 0; u < ds_list_size(realTimeObjects); u++) {
                var rt2 = realTimeObjects[|u];
                if (i != u) {
                    if ((!rt2.realTime || rt2.locked) && 
                            rt.localTime - rt2.localTime >= 
                            distanceInLightYears(rt, rt2)) {
                        rt.locked = true;
                        break;        
                    }
                }
            }
        }
    }
}