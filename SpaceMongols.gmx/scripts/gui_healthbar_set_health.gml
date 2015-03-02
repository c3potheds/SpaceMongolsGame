/*
    Sets the value of the health that the healthbar shows. If less than 0, set to 0. If greater than the max
    health, set to the max health.

    argument0: healthbar
    argument1: "health" value (can represent any value, but health is the most common)
*/

with (argument0) {
    value = argument1;
    if (value > maxvalue) {
        value = maxvalue;
    }
    else if (value < 0) {
        value = 0;
    }
}
