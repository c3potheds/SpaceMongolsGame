///menu_updatePosition(menu, x, y)

var menu = argument0;
var xx = argument1;
var yy = argument2;

with (menu) {
    offsetx = x-xx;
    offsety = y-yy;
    for (var i = 0; i <= ds_list_size(buttons); i++) {
        var button = buttons[|i];
        button.x += offsetx;
        button.y += offsety;
    }
    x += offsetx;
    y += offsety;
}
