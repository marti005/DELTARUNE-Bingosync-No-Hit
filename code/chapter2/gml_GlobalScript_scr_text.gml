/// PATCH

/// AFTER
                with (obj_ch2_scene21_loop)
                    photocon = 2;
/// CODE
                scr_add_goal_progress(64, 1);
/// END

/// BEFORE
                        global.gold -= 1997;
/// CODE
                        if (room == room_dw_city_moss)
                            scr_add_goal_progress(29, 1);
/// END

/// AFTER
        case 1189:
/// CODE
            if (room == room_dw_cyber_musical_door)
                scr_add_goal_progress(58, 1);
/// END