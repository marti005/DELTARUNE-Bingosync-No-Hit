/// PATCH

/// AFTER
if (con == 7)
{
/// CODE
    global.berdly_encounters[1]++;
    scr_save_bingo_data();
    
    if (scr_array_total(global.berdly_encounters))
        scr_add_goal_progress(34, 1);
/// END