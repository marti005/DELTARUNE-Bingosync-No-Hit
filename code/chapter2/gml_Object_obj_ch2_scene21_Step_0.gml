/// PATCH

/// AFTER
if (got_banana && !d_ex())
{
/// CODE
    global.bananas[1]++;
    scr_save_bingo_data();
    
    if (scr_array_total(global.bananas))
        scr_add_goal_progress(18, 1);
/// END