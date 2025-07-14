/// PATCH .ignore if CHAPTER_1 || CHAPTER_3

/// AFTER
    if (global.flag[36] == 0)
    {
/// CODE
        scr_add_goal_array("dojo_challenges", dojoFlag - 810, 32);

        if (dojoFlag == 815)
            scr_add_goal_progress(129, 1);
/// END