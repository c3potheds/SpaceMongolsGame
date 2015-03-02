///console_create(x, y, width, height)
/* 
    Creates a console object that can display debug output, which is useful for
    unit testing.
*/

var xx = argument0;
var yy = argument1;
var ww = argument2;
var hh = argument3;
var console = instance_create(xx, yy, obj_console);
with (console) {
    width = ww;
    height = hh;
    firstLine = 0;
    lastLine = 0;
    lines[0] = '';
    textColor[0] = c_white;
    buffer = '';
    currentColor = c_white;
    keyboard_string = '>>';
    focus = true;
}
return console;
