/// PATCH

/// AFTER
function scr_heal(arg0, arg1)
{
/// CODE
    if (global.fighting && !global.count_once && arg1 > 0)
        scr_add_goal_progress(72, 1);
/// END