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
                        global.revivemints[0]++;
                        break;

                    case room_cc_4f:
                        global.revivemints[1]++;
                        break;
                }
                
                scr_save_bingo_data();
                
                if (scr_array_total(global.revivemints, 3))
                    scr_add_goal_progress(36, 1);
            }
/// END
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
                        global.revivemints[2]++;
                        break;

                    case "room_dw_mansion_fire_paintings":
                        global.revivemints[3]++;
                        break;

                    case "room_dw_green_room":
                        global.revivemints[4]++;
                        break;

                    case "room_dw_ranking_b":
                        global.revivemints[5]++;
                        break;

                    case "room_dw_b3bs_mysterypuzzle":
                        global.revivemints[6]++;
                        break;

                    case "room_dw_church_pianopiece_right":
                        global.revivemints[7]++;
                        break;

                    case "room_dw_churchb_library":
                        global.revivemints[8]++;
                        break;

                    case "room_dw_churchb_moneyfountain":
                        global.revivemints[9]++;
                        break;
                }
                
                scr_save_bingo_data();
                
                if (scr_array_total(global.revivemints, 3))
                    scr_add_goal_progress(36, 1);

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
/// END
#endif