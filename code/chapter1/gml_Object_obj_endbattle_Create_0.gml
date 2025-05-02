/// PATCH

/// PREPEND
switch (global.encounterno)
{
    case 25:
        scr_add_goal_progress(5, 1);
        break;

    case 40:
        scr_add_goal_progress(12, 1);
        break;

    case 23:
        global.smorg[0]++;
        scr_save_bingo_data();
        
        if (global.smorg[0] >= 1 && global.smorg[1] >= 1)
            scr_add_goal_progress(27, 1);
        
        break;

    case 8:
        if (!global.clover_manual)
            scr_add_goal_progress(60, 1);
        else
            global.clover_manual = false;

        break;
    
    case 3:
        scr_add_goal_progress(63, 1);
        break;
    
    case 32:
        scr_add_goal_progress(67, 1);
        break;
}
/// END