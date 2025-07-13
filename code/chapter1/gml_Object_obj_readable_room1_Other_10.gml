/// PATCH

/// AFTER
        global.gold += 40;
/// CODE
        scr_add_goal_money(40);
/// END

/// AFTER
        global.flag[252] = 1;
/// CODE
        scr_add_goal_progress(4, 1);
/// END