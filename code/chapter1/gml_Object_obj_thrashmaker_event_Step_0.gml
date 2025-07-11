/// PATCH

/// AFTER
if (con == 30 && !instance_exists(obj_thrashcontroller))
{
/// CODE
    if (global.flag[220] == 3 && global.flag[221] == 3 && global.flag[222] == 3 && global.flag[223] == 27 && global.flag[224] == 27 && global.flag[225] == 27)
        scr_add_goal_progress(48, 1);

    else if (global.flag[220] == 2 && global.flag[221] == 0 && global.flag[222] == 0)
        scr_add_goal_progress(68, 1);
/// END