///builder_dataHandler(builder, handlerScript)
/*
    Sets handlerScript as the data handler for builder.
    
    The handlerScript is a script that takes three arguments:
        builtObject: the object that is being assembled.
        key: the name of a property that is being set.
        value: the value the property is being set to.
    The handlerScript properly sets the property to the given value.
*/

var builder = argument0;
var handlerScript = argument1;

with (builder) {
    dataHandler = handlerScript;
}
