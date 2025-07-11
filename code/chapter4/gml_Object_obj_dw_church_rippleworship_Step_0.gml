/// PATCH

/// AFTER
    if (trig)
    {
/// CODE
        global.golden_sheets[1]++;
        scr_save_bingo_data();

        if (scr_array_total(global.golden_sheets))
            scr_add_goal_progress(102, 1);
/// END