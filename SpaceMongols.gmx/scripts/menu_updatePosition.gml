///menu_updatePosition(menu, x, y)

var menu = argument0;
var xx = argument1;
var yy = argument2;

with (menu) {
    var menuOriginX = menu.x;
    var menuOriginY = menu.y;
    for (var i = 0; i <= ds_list_size(buttons); i++) {
        var button = buttons[|i];
        button.x = (button.x-menuOriginX)+xx;
        button.y = (button.y-menuOriginY)+yy;
    }
    x = xx;
    y = yy;
}
