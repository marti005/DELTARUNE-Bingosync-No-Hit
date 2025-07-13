/// PATCH

/// PREPEND
switch (global.encounterno)
{
    case 189:
        scr_add_goal_array(global.smorg, 2, 27);    
        break;

    case 183:
        if (global.flag[669] == 1)
            scr_add_goal_progress(90, 1);
        else
            scr_add_goal_progress(91, 1);

        scr_add_goal_array(global.golden_sheets, 2, 102);
        break;
}
/// END