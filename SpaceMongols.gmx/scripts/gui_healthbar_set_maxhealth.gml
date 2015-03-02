/*
    Sets the maximum value of the healthbar. Does NOT change the actual health on increase, so what was 100% 
    health before would show less than 100% if you increase the maximum health. However, if the max health
    decreases to below the actual health, the actual health IS updated to be equal to the max health. This is
    to prevent the rectangle that measures the health from going "out of bounds."
    
    argument0: healthbar
    argument1: max health
*/

with (argument0) {
    maxvalue = argument1;
    if (value > maxvalue) {
        value = maxvalue;
    }
}
