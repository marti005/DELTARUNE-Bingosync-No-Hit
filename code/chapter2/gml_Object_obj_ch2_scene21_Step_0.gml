/// PATCH

/// AFTER
if (got_banana && !d_ex())
{
/// CODE
    global.bananas[1]++;
    scr_save_bingo_data();
    
    if (global.bananas[0] >= 1 && global.bananas[1] >= 1)
        scr_add_goal_progress(18, 1);
/// END