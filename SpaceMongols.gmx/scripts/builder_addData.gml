///builder_addData(builder, key, value)
/*
    Adds the key, value pair to the builder's data field.
*/

var builder = argument0;
var key = argument1;
var value = argument2;

with (builder) {
    data[?key] = value;
}