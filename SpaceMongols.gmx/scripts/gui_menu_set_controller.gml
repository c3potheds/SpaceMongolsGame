///gui_component_set_controller(menu, controller)
/*
    Adds a controller object to the component. The controller object will be
    given a variable called "menu" that points to the component. The "menu"
    variable can be referenced anywhere except the Create Event. The controller
    object can do just about anything; adding buttons to menus dynamically,
    containing User Defined Events to handle callbacks, or changing colors of
    a button over time.
    
    The controller object is created when the component is made visible and
    destroyed when the component is made invisible.
*/

with (argument0) {
    controller = argument1;
}
