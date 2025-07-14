/// PATCH

/// AFTER
                    var itemgetstring = scr_itemget_anytype_text(9, "item");
                    
                    if (noroom == 0)
                    {
/// CODE
                        scr_add_goal_progress(47, 1);
/// END

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
        case 1206:
/// CODE
            if (room == room_dw_cyber_musical_door)
                scr_add_goal_progress(58, 1);
/// END