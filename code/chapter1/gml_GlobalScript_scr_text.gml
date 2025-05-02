/// PATCH

/// AFTER
        case 111:
            if (global.choice == 0)
            {
/// CODE
                scr_add_goal_progress(69, 1);
/// END

/// AFTER
                    if (scr_litemcheck(8))
                    {
/// CODE
                        scr_add_goal_progress(83, 1);
/// END

/// AFTER
        case 251:
            if (global.choice == 0)
            {
/// CODE
                scr_add_goal_progress(77, 1);
/// END

/// AFTER
                with (obj_npc_hammerguy)
                    con = 10;
/// CODE
                global.fix_us[0]++;
                scr_save_bingo_data();
                
                if (global.fix_us[0] >= 1 && global.fix_us[1] >= 1)
                    scr_add_goal_progress(24, 1);
/// END

/// AFTER
                    scr_itemget(9);
                    
                    if (noroom == 0)
                    {
/// CODE
                        scr_add_goal_progress(47, 1);
/// END

/// AFTER
                scr_itemremove(6);
                scr_itemget(7);
/// CODE
                scr_add_goal_progress(19, 1);
/// END

/// AFTER
            if (global.choice == 0)
            {
                scr_itemget(7);
/// CODE
                scr_add_goal_progress(19, 1);
/// END

/// AFTER
                snd_play(snd_egg);
/// CODE
                global.eggs[0]++;
                scr_save_bingo_data();
                
                if (global.eggs[0] >= 1 && global.eggs[1] >= 1)
                    scr_add_goal_progress(21, 1);

                scr_add_goal_progress(1, 1);
/// END