///button_menu_controller(controller)
/*
    Returns a builder that, when made a component to a menu builder, gives the
    resulting menu a controller object, which will be given a reference to the
    menu in its .menu property.
    
    The argument to this function should be an object index, not an instance
    id. This is because the controller object is created and deleted depending
    on the visibility of the menu.
*/

var builder = instance_create(0, 0, obj_builder);
var controller = argument0;
builder_type(builder, obj_build);
builder_addData(builder, 'type', 'menu controller');
builder_addData(builder, 'data', controller);
builder_dataHandler(builder, builder_defaultDataHandler);
return builder;