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
                global.flag[106] = 1;
/// CODE
                scr_add_goal_progress(37, 1);
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