/// PATCH

/// AFTER
    if (battle_end)
    {
/// CODE
        scr_add_goal_progress(55, 1);
/// END

/// AFTER
    con = 74;
/// CODE
    global.recruits[16]++;
    global.recruits[17]++;
    scr_save_bingo_data();

    if (scr_array_total(global.recruits, 2))
        scr_add_goal_progress(71, 1);
/// END