/// PATCH

/// AFTER
if (con == 7)
{
/// CODE
    global.berdly_encounters[1]++;
    scr_save_bingo_data();
    
    if (global.berdly_encounters[0] >= 1 && global.berdly_encounters[1] >= 1)
        scr_add_goal_progress(34, 1);
/// END