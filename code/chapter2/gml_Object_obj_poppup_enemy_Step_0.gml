/// PATCH

// "Click" act
/// AFTER
    if (actcon == 5.2 && !instance_exists(obj_poppup_overload))
    {
        with (obj_poppup_enemy)
        {
/// CODE
            scr_add_goal_progress(2, 1);
            scr_add_goal_progress(10, 1);
            scr_add_goal_progress(30, 1);
/// END
