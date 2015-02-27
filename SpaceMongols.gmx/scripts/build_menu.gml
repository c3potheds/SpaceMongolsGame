///build_menu(name, {menu, button, label, orientation, position, align, controller, width})
/*
    Creates a builder for a menu object. Arguments for the builder can include:
    build_menu: add a nested menu
    build_button: add a button, placed according to the align, orientation, 
            and position parameters of the builder
    build_label: add a label, placed according to the align, orientation, and
            position parameters of the builder
    build_menu_orientation: set the orientation to HORIZONTAL or VERTICAL. The
            orientation determines whether the width parameter specifies
            vertical or horizontal width (respectively) and places added 
            components along the specified axis.
    build_menu_position: set the position of the menu. The origin of the menu's
            coordinate system is determined by the align parameter.
    build_menu_align: set the alignment of the menu. Use the fa_ constants as
            arguments. If the parameter is fa_left, for example, the origin of
            the menu's coordinates will be on the left corner, with new
            components added to the right. If the parameter is fa_center, 
            components are added to the right, but will center themselves along
            the orientation axis.
    button_menu_controller: add a controller component to the menu. The
            controller can be any object, which can have its own events as the
            user chooses. The object will be created when this menu is made
            visible and destroyed when the menu is made invisible, and
            instances will have its .menu local variable set to a reference to
            the menu built by the encapsulating menu builder.
    button_menu_width: set the width of the menu in the dimension orthogonal to
            its orientation.
*/
var builder = instance_create(0, 0, obj_builder);
builder.type = obj_menu;
//ds_map_copy(builder.data, global.builderPrototypes[obj_menu]);
builder.data[?'name'] = argument[0];
for (var i = 1; i < argument_count; i++) {
    ds_list_add(builder.components, argument[i]);
}
return builder;
