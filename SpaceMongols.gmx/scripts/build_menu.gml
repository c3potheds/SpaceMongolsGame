#define build_menu
///build_menu(name, *components)
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
builder_type(builder, obj_menu);
builder_addData(builder, 'name', argument[0]);
builder_addComponents(builder, global.menuPrototype);
builder_addComponents(builder, array_sliceFrom(argument, 1));
builder_dataHandler(builder, build_menu_handleData);
builder_componentHandler(builder, build_menu_handleComponent);
return builder;

#define build_menu_handleData
///build_menu_handleData(object, key, value)

var object = argument0;
var key = argument1;
var value = argument2;
with (object) {
    switch (key) {
        case 'name':
            name = value;
            break;
    }
}

#define build_menu_handleComponent
///build_menu_handleComponent(object, component)

var object = argument0;
var component = argument1;

with (object) {
    switch (component.type) {
        case obj_button:
            menu_addButton(object, component);
            break;
        case obj_menu:
            menu_addMenu(object, component);
            break;
        case obj_menuManager:
            menu_addMenuManager(object, component);
            break;
        case obj_label:
            menu_addLabel(object, component);
            break;
    }
}
