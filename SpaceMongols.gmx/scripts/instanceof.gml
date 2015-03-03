/*
    Why doesn't Game Maker have this function?
    
    This script returns true if the given instance is an instance of the given 
    object, or is an instance of a descendant of the given object, false 
    otherwise.
    
    argument0: instance
    argument1: object
*/

return (argument0.object_index == argument1 || 
        object_is_ancestor(argument0.object_index,argument1));
