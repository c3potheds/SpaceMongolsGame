/*
    This script changes the color of the text on components that can draw text (buttons, labels, and healthbars).
    The first argument is the primary color of the text; the second argument is the color of the shadow it casts.
    If you have a high contrast on the text, you can ensure the text shows up on a variety of backgrounds. Or,
    you can have low contrast to make the text look bold.

    argument0: component
    argument1: text color
    argument2: shadow color
*/

with (argument0) {
    tcolor = argument1;
    scolor = argument2;
}
