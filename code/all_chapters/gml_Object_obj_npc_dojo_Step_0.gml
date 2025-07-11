/// PATCH .ignore if CHAPTER_1 || CHAPTER_3

/// AFTER
    if (global.flag[36] == 0)
    {
/// CODE
        global.dojo_challenges[dojoFlag - 810]++;
        scr_save_bingo_data();
        
        if (scr_array_total(global.dojo_challenges, 3))
            scr_add_goal_progress(32, 1);

        if (dojoFlag == 815)
            scr_add_goal_progress(129, 1);
/// END