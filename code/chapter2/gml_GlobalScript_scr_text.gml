/// PATCH

/// BEFORE
                with (obj_npc_hammerguy)
                    con = 10;
            }
            
            if (global.choice == 2)
/// CODE
                global.fix_us[1]++;
                scr_save_bingo_data();
                
                if (global.fix_us[0] >= 1 && global.fix_us[1] >= 1)
                    scr_add_goal_progress(24, 1);
/// END

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

/// BEFORE
                global.flag[918] = 1;
/// CODE
                global.eggs[1]++;
                scr_save_bingo_data();
                
                if (global.eggs[0] >= 1 && global.eggs[1] >= 1)
                    scr_add_goal_progress(21, 1);
                
                if (room == room_dw_city_man)
                    scr_add_goal_progress(1, 1);
/// END

/// AFTER
        case 1203:
            if (global.choice == 0)
            {
/// CODE
                if(room == room_dw_cyber_musical_door)
                    scr_add_goal_progress(58, 1);
/// END

/// AFTER
        case 1204:
/// CODE
            if(room == room_dw_cyber_musical_door)
                scr_add_goal_progress(58, 1);
/// END