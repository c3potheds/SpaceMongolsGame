/*
    Creates a label that functions just like an ordinary label, but is built to handle
    larger amounts of text. If the text is so long that it extends beyond the edge of the
    component, the text will render in more than one line.
    
    argument0: text
*/

var l;
l = instance_create(0,0,obj_gui_multiline_label);
l.text = argument0;
return l;