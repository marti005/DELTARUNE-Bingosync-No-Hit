/// PATCH

/// PREPEND
switch (global.encounterno)
{
    case 189:
        global.smorg[2]++;
        scr_save_bingo_data();
        
        if (scr_array_total(global.smorg))
            scr_add_goal_progress(27, 1);
        
        break;

    case 183:
        if (global.flag[669] == 1)
            scr_add_goal_progress(90, 1);
        else
            scr_add_goal_progress(91, 1);

        global.golden_sheets[2]++;
        scr_save_bingo_data();

        if (scr_array_total(global.golden_sheets))
            scr_add_goal_progress(102, 1);
        break;
}
/// END