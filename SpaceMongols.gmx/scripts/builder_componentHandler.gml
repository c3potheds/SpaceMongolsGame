///builder_componentHandler(builder, handlerScript)
/*
    Sets handlerScript as the component handler for builder.
    
    The handlerScript is a script that takes two arguments:
        builtObject: the object that is being assembled.
        component: the object that a nested builder has assembled.
    The handlerScript properly adds component to the builtObject. If the
    component is an inappropriate object for the component, the script should
    terminate quietly.
*/

var builder = argument0;
var handlerScript = argument1;

with (builder) {
    componentHandler = handlerScript;    
}