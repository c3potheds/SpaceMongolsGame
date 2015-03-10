///build(builder)
/*
    Builds an object according to the builder.
*/
var builder = argument0;
var builtObject = instance_create(0, 0, type);

with (builder) {
    //Put all the data in the data map into the object
    var key = ds_map_find_first(data);
    do {
        script_execute(dataHandler, builtObject, key, data[?key]);
        key = ds_map_find_next(data, key);
    } until (key == ds_map_find_last(data));
    //Build all of the components and put them in the object
    for (var i = 0; i < ds_list_size(components); i++) {
        var component = build(components[|i]);
        script_execute(componentHandler, builtObject, component);
    }
    instance_destroy();
}
return builtObject;