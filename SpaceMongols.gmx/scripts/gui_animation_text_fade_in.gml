/*
    Creates an animation that works on any text-using component, which has the text
    fade in. When the animation is complete, the given event is performed to
    notify the listener object.
    
    argument0: component
    argument1: alpha gain (how much alpha is added every step)
    argument2: listener (leave blank if you don't want to be notified of completion)
    argument3: event (leave blank if you don't want to be notified of completion)
    argument4: event number (see above)
*/

with (instance_create(0,0,obj_gui_animation_text_fade_in)) {
    step = argument1;
    object = argument0;
    if (argument_count > 2) {
        listener = argument2;
        event = argument3;
        event_no = argument4;
    }
    with (object) {
        gui_component_set_text_alpha(argument0,0);
    }
}