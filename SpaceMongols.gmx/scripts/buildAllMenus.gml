/*
menuManager_game = build(build_menuManager(
    //PLANET CONTROL MENU
    build_menu('Planet Control Menu',
        build_menu_position(BOTTOM | LEFT),
        build_menu_orientation(GUI_ORIENTATION_HORIZONTAL),
        build_menu('Construction Pane',
            build_menu_orientation(GUI_ORIENTATION_VERTICAL),
            build_label('Construction',
                build_textColor(c_white),
                build_backgroundColor(c_gray)
            ),
            build_menu('Construction Options',
                build_menu_controller(obj_constructionPaneController),
                build_menu_orientation(GUI_ORIENTATION_VERTICAL),
                build_width(128)
            )
        ),
        build_menu('Fleet Pane',
            build_menu_orientation(GUI_ORIENTATION_VERTICAL),
            build_label('Fleet',
                build_textColor(c_white),
                build_backgroundColor(c_gray)
            ),
            build_menu('Fleet Contents Pane',
                build_menu_controller(obj_fleetPaneController),
                build_menu_orientation(GUI_ORIENTATION_HORIZONTAL),
                build_backgroundColor(c_black),
                build_width(128)
            ),
            build_menu('Fleet Page Navigator',
                build_menu_orientation(GUI_ORIENTATION_HORIZONTAL),
                build_menu_align(fa_center),
                build_button('<',
                    build_backgroundColor(c_ltgray),
                    build_textColor(c_black),
                    build_button_callback(button_fleetPane_left_callback)
                ),
                build_spacer(32),
                build_button('>',
                    build_backgroundColor(c_ltgray),
                    build_textColor(c_black),
                    build_button_callback(button_fleetPane_right_callback)
                )
            )
        ),
        build_menu('Control Pane'
        
        )
    ),
    //BATTLE MENU
    build_menu('Battle Menu',
        build_menu('Engage Container',
            build_menu_position(BOTTOM | RIGHT),
            build_width(64),
            build_button('Engage!',
                build_backgroundColor(c_white),
                build_textColor(c_red),
                build_button_callback(button_engage_callback)
            )
        ),
        build_menu('Retreat Container',
            build_menu_position(BOTTOM | LEFT),
            build_width(64),
            build_button('Retreat!',
                build_backgroundColor(c_white),
                build_textColor(c_purple),
                build_button_callback(button_retreat_callback)
            )
        )
    )
));
