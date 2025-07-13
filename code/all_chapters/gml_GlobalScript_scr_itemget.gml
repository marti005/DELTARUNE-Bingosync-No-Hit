/// PATCH

#if CHAPTER_1
/// AFTER
            global.item[i] = arg0;
/// CODE
            if (i == 11)
                scr_add_goal_progress(39, 1);

            else if (arg0 == 2)
            {
                switch (room)
                {
                    case room_forest_dancers1:
                        scr_add_goal_array(global.revivemints, 0, 36);
                        break;

                    case room_cc_4f:
                        scr_add_goal_array(global.revivemints, 1, 36);
                        break;
                }
            }
#else
/// AFTER
            global.item[__i] = arg0;
/// CODE
            if (__i == 11)
                scr_add_goal_progress(39, 1);
/// END

/// BEFORE
    script_execute(scr_iteminfo_all);
/// CODE
    if (!noroom)
    {
        switch (arg0)
        {
            case 2:
                switch (room_get_name(room))
                {
                    case "room_dw_cyber_viro_ring":
                        scr_add_goal_array(global.revivemints, 2, 36);
                        break;

                    case "room_dw_mansion_fire_paintings":
                        scr_add_goal_array(global.revivemints, 3, 36);
                        break;

                    case "room_dw_green_room":
                        scr_add_goal_array(global.revivemints, 4, 36);
                        break;

                    case "room_dw_ranking_b":
                        scr_add_goal_array(global.revivemints, 5, 36);
                        break;

                    case "room_dw_b3bs_mysterypuzzle":
                        scr_add_goal_array(global.revivemints, 6, 36);
                        break;

                    case "room_dw_church_pianopiece_right":
                        scr_add_goal_array(global.revivemints, 7, 36);
                        break;

                    case "room_dw_churchb_library":
                        scr_add_goal_array(global.revivemints, 8, 36);
                        break;

                    case "room_dw_churchb_moneyfountain":
                        scr_add_goal_array(global.revivemints, 9, 36);
                        break;
                }
                break;

            case 35:
                scr_add_goal_progress(89, 1);
                break;

            case 63:
                scr_add_goal_progress(109, 1);
                break;
                
            case 33:
                scr_add_goal_progress(122, 1);
                break;
        }
    }
#endif
/// END