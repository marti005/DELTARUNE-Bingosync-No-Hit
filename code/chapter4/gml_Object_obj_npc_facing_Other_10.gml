/// PATCH

/// BEFORE
            if (scr_flag_get(798) < 2)
/// CODE
            scr_add_goal_progress(82, 1);
/// END

/// BEFORE
        if (talked == 0)
        {
            if (scr_flag_get(786) == 0)
/// CODE
        scr_add_goal_progress(82, 1);
/// END